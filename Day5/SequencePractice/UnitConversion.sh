#!/bin/bash -x
inch=1;
oneFeet=$(($inch * 12));
toFeets=`echo $inch | awk '{div = $inch*42/12; printf "%f", div}'`
squareFeet=`echo $oneFeet | awk '{mul = 60*40; printf "%f", mul}'`
squareMeter=`echo $squareFeet | awk '{mul = $squareFeet*0.0929; printf "%f", mul}'`
rectangularPlotAreaInMeter=$squareMeter;
rectangularPlotInAcres=`echo $rectangularPlotAreaInMeter | awk '{mul = (($rectangularPlotAreaInMeter*25))*0.000247; printf "%f", mul}'`
