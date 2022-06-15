import 'package:flutter/material.dart';
import 'package:ninja_trips/models/Trip.dart';
import 'package:ninja_trips/screens/details.dart';

class TripList extends StatefulWidget {
  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  List<Widget> _tripTiles = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addTrips();
    });
  }

  void _addTrips() {
    // get data from db
    List<Trip> _trips = [
      Trip(title: 'Your Name ', Genero: 'a', nights: '1', img: '1.png'),
      Trip(
          title: 'Komi-san wa Komyushou Desu',
          Genero: '400',
          nights: '5',
          img: '2.png'),
      Trip(title: 'Attack on Titan', Genero: '750', nights: '2', img: '3.png'),
      Trip(title: 'Naruto', Genero: '600', nights: '4', img: '4.png'),
      Trip(title: 'My Hero Academia', Genero: '600', nights: '4', img: '5.png'),
      Trip(title: 'SPY x FAMILY', Genero: '600', nights: '4', img: '6.png'),
      Trip(
          title: 'Koi wa Sekai Seifuku no Ato de',
          Genero: '600',
          nights: '4',
          img: '7.png'),
      Trip(title: 'Fairy Tail', Genero: '600', nights: '4', img: '8.png'),
      Trip(title: 'One Piece', Genero: '600', nights: '4', img: '9.png'),
      Trip(title: 'Black Clover', Genero: '600', nights: '4', img: '10b.png'),
    ];

    Future ft = Future(() {});
    _trips.forEach((Trip trip) {
      ft = ft.then((data) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          _tripTiles.add(_buildTile(trip));
          _listKey.currentState.insertItem(_tripTiles.length - 1);
        });
      });
    });
  }

  Widget _buildTile(Trip trip) {
    return ListTile(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Details(trip: trip)));
      },
      contentPadding: EdgeInsets.all(25),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Anime',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[300])),
          Text(trip.title,
              style: TextStyle(fontSize: 20, color: Colors.grey[600])),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'location-img-${trip.img}',
          child: Image.asset(
            'images/${trip.img}',
            height: 50.0,
          ),
        ),
      ),
      trailing: Text('Ver'),
    );
  }

  Tween<Offset> _offset = Tween(begin: Offset(1, 0), end: Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: _listKey,
        initialItemCount: _tripTiles.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            position: animation.drive(_offset),
            child: _tripTiles[index],
          );
        });
  }
}
