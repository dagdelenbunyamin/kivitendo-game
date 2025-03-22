package Kivitendo::Game;
use Dancer2;
use JSON qw(decode_json to_json);
use Path::Tiny;

get '/' => sub {
    send_file 'index.html';
};

get '/api/frage' => sub {
    my $file = path(config->{appdir}, 'questions.json');

    unless (-e $file) {
        status 500;
        return to_json({ fehler => 'Fragen-Datei nicht gefunden' });
    }

    my $content = eval { $file->slurp_utf8 };  # UTF-8 wichtig wegen Umlaute
    if ($@ || !$content) {
        status 500;
        return to_json({ fehler => 'Fehler beim Lesen der Datei' });
    }

    my $fragen;
    eval {
        $fragen = decode_json($content);
        1;
    } or do {
        my $error = $@ || "Unbekannter Fehler";
        warn "💥 JSON-Decode-Fehler: $error\n";
        status 500;
        return to_json({ fehler => 'Ungültiges JSON-Format' });
    };

    # Zufällige Frage wählen
    my $zufallsfrage = $fragen->[ int(rand(@$fragen)) ];

    return to_json($zufallsfrage, { utf8 => 1 });
};

true;
