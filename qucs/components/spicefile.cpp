/***************************************************************************
                              spicefile.cpp
                             ---------------
    begin                : Tue Dez 28 2004
    copyright            : (C) 2004 by Michael Margraf
    email                : michael.margraf@alumni.tu-berlin.de
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#if HAVE_CONFIG_H
# include <config.h>
#endif

#include "spicefile.h"
#include "main.h"

#include <qregexp.h>
#include <qprocess.h>

#if HAVE_UNISTD_H
# include <unistd.h>
#endif

#ifdef __MINGW32__
#include <windows.h>
#define sleep(sec) (Sleep ((sec) * 1000), 0)
#endif

SpiceFile::SpiceFile()
{
  Description = QObject::tr("SPICE netlist file");
  // Property descriptions not needed, but must not be empty !
  Props.append(new Property("File", "", true, QString("x")));
  Props.append(new Property("Ports", "", false, QString("x")));
  recreate();

  Model = "SPICE";
  Name  = "X";
  withSim = false;
}

SpiceFile::~SpiceFile()
{
}

Component* SpiceFile::newOne()
{
  return new SpiceFile();
}

Component* SpiceFile::info(QString& Name, char* &BitmapFile, bool getNewOne)
{
  Name = QObject::tr("SPICE netlist");
  BitmapFile = "spicefile";

  if(getNewOne)  return new SpiceFile();
  return 0;
}

void SpiceFile::recreate()
{
  Lines.clear();
  Texts.clear();
  Ports.clear();
  QFontMetrics  metrics(QucsSettings.font);   // get size of text
  int fHeight = metrics.lineSpacing();

  int No = 0;
  QString tmp, PortNames = Props.at(1)->Value;
  if(!PortNames.isEmpty())  No = PortNames.contains(',') + 1;

  int h = 30*((No-1)/2) + 15;
  Lines.append(new Line(-16, -h, 16, -h,QPen(QPen::darkBlue,2)));
  Lines.append(new Line( 16, -h, 16,  h,QPen(QPen::darkBlue,2)));
  Lines.append(new Line(-16,  h, 16,  h,QPen(QPen::darkBlue,2)));
  Lines.append(new Line(-16, -h,-16,  h,QPen(QPen::darkBlue,2)));

  int i = fHeight/2;
  if(withSim) {
    i = fHeight - 2;
    Texts.append(new Text(-10, 0, QObject::tr("sim"), Qt::red));
  }
  Texts.append(new Text(-15, -i, QObject::tr("spice")));


  i = 0;
  int w, y = 15-h;
  while(i<No) {
    Lines.append(new Line(-30,  y,-16,  y,QPen(QPen::darkBlue,2)));
    Ports.append(new Port(-30,  y));
    tmp = PortNames.section(',', i, i).mid(4);
    w = metrics.width(tmp);
    Texts.append(new Text(-19-w, y-fHeight-2, tmp));
    i++;

    if(i == No) break;
    Lines.append(new Line( 16,  y, 30,  y,QPen(QPen::darkBlue,2)));
    Ports.append(new Port( 30,  y));
    tmp = PortNames.section(',', i, i).mid(4);
    Texts.append(new Text( 20, y-fHeight-2, tmp));
    y += 60;
    i++;
  }

  if(No > 0) {
    Lines.append(new Line( 0, h, 0,h+15,QPen(QPen::darkBlue,2)));
    Texts.append(new Text( 4, h,"Ref"));
    Ports.append(new Port( 0,h+15));    // 'Ref' port
  }

  x1 = -30; y1 = -h-2;
  x2 =  30; y2 =  h+15;

  tx = x1+4;
  ty = y1 - fHeight - 4;
  if(Props.first()->display) ty -= fHeight;

  // rotate and mirror
  bool mmir = mirroredX;
  int  rrot = rotated;
  if(mmir)  mirrorX();   // mirror
  for(i=0; i<rrot; i++)  rotate(); // rotate


  rotated = rrot;   // restore properties (were changed by rotate/mirror)
  mirroredX = mmir;
}

// ---------------------------------------------------
QString SpiceFile::NetList()
{
  if(!isActive) return QString("");   // should it be simulated ?

  QString Type = Props.first()->Value;
  if(Props.next()->Value.isEmpty())
    return QString("");  // no ports, no subcircuit instance

  QString s = "Sub:"+Name;   // SPICE netlist is subcircuit
  for(Port *pp = Ports.first(); pp != 0; pp = Ports.next())
    s += " "+pp->Connection->Name;   // output all node names

  if(Type.at(0) <= '9') if(Type.at(0) >= '0') Type = '_' + Type;
  Type.replace(QRegExp("\\W"), "_"); // none [a-zA-Z0-9] into "_"
  s += " Type=\""+Type+"\"";   // type for SPICE subcircuit

  return s;
}
