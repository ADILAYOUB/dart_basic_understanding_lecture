import 'dart:io';

void main(List<String> arg) {
  if (arg.isEmpty) {
    print("Import .cvs file ");
    exit(1);
  }
  final path = arg.first;
  final file = File(path)
      .readAsLinesSync(); // reads all the content of the file in one go
  // create a empty map
  final totalDurationByTag = <String, double>{};
  var totalDuration = 0.0;
  // ramove the header from the list of lines
  file.removeAt(0);
  for (var files in file) {
    final values = files.split(',');
    final durationString = values[3].replaceAll('"', '');
    // parse this string duration into double
    final duration = double.parse(durationString);
    // get the tags which are at 5
    final tag = values[5].replaceAll('"', '');
    final tagduration = totalDurationByTag[tag];
    if (tagduration == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = tagduration + duration;
    }
    totalDuration += duration;
  }

  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'No Tag' : entry.key;
    print('$tag: $durationFormatted h');
  }
  print('Total duration is: ${totalDuration.toStringAsFixed(1)}h');
  //logic

  // files = readFile(path);
  // durationtag = empty map
  // for loop
  // values = files.split(,)
  // duration = values[3]
  // tag = values[5]
  // update (durationtag[tag], duration)
  // print duration by tag
}
