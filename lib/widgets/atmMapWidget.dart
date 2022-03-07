import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class AtmMapWidget extends StatefulWidget {
  const AtmMapWidget({Key? key}) : super(key: key);

  @override
  _AtmMapWidgetState createState() => _AtmMapWidgetState();
}

class _AtmMapWidgetState extends State<AtmMapWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(10.521, 7.457),
        minZoom: 5.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate:
              "https://api.mapbox.com/styles/v1/zamirszn/ckzv6zfyi001914t88b3qafmi/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiemFtaXJzem4iLCJhIjoiY2t6OGF6NWF6MHUxZzJvczg2dmN6bWl1ciJ9.7muK6sEmp0Q_gqBX8HfpVA",
          additionalOptions: {
            "acessToken":
                "pk.eyJ1IjoiemFtaXJzem4iLCJhIjoiY2t6OGJqaGphMTgwZDJ4cGt3ajBmZzRldSJ9.0sJPnHMuvwIKjKpmlTIQJg",
            'id': 'mapbox.mapbox-streets-v7'
          },
        ),
      ],
    );
  }
}
