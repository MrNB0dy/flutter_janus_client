part of janus_client;

class VideoRoomJoiningEvent extends VideoRoomEvent {
  VideoRoomJoiningEvent({
    videoroom,
    room,
    this.joining,
  }) {
    super.videoroom = videoroom;
    super.room = room;
  }

  UserJoinend? joining;

  VideoRoomJoiningEvent.fromJson(dynamic json) {
    videoroom = json['videoroom'];
    room = json['room'];
    joining = UserJoinend.fromJson(json['joining']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['videoroom'] = videoroom;
    map['room'] = room;
    map['joining'] = joining;

    return map;
  }
}

class UserJoinend {
  UserJoinend({
    this.id,
    this.display,
  });

  UserJoinend.fromJson(dynamic json) {
    id = json['id'];
    display = json['display'];
  }

  String? id;
  String? display;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['display'] = display;
    return map;
  }
}
