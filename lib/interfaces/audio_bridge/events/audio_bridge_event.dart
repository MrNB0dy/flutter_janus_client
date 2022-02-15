part of janus_client;
class AudioBridgeEvent{
  String? audiobridge;
  late int room;


//<editor-fold desc="Data Methods">
  AudioBridgeEvent.create(videoroom,room){
    this.audiobridge=videoroom;
    room=room;
  }


  AudioBridgeEvent(){
    this.audiobridge='';
    room=0;
  }

  @override
  bool operator ==(Object other) => identical(this, other) || (other is AudioBridgeEvent && runtimeType == other.runtimeType && audiobridge == other.audiobridge && room == other.room);

  @override
  int get hashCode => audiobridge.hashCode ^ room.hashCode;

  @override
  String toString() {
    return 'VideoRoomEvent{' + 'audiobridge: $audiobridge,' + ' room: $room,' + '}';
  }

  AudioBridgeEvent copyWith({
    String? audiobridge,
    int? room,
  }) {
    return AudioBridgeEvent.create(
      audiobridge ?? this.audiobridge,
      room ?? this.room,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'audiobridge': this.audiobridge,
      'room': this.room,
    };
  }

  factory AudioBridgeEvent.fromMap(Map<String, dynamic> map) {
    return AudioBridgeEvent.create(
      map['audiobridge'] as String,
      map['room'] as int,
    );
  }

//</editor-fold>
}