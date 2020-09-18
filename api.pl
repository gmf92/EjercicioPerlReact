# api.pl
# Incluimos los módulos necesarios
use Mojolicious::Lite -signatures;
use Mojo::JSON qw(decode_json false true);
use File::Slurp qw(read_file);


my $filename = "db.json";
my $json = read_file($filename);
my $jsonStructure = decode_json($json);


get '/api' => sub ($c) {
  $c->render(json => $jsonStructure);
};

# Endpoint GET
get '/' => 'index';

app->start;
__DATA__

@@ index.html.ep
<!DOCTYPE html>
<html>
  <head>
      <title></title>
  </head>

  <body>
    <h1>Ejercicio Perl y React</h1>

    <div id="container"></div>

    <!-- Cargar React -->
    <script src="https://unpkg.com/react@16/umd/react.development.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@16/umd/react-dom.development.js" crossorigin></script>

    <!-- Nuestro Componente React -->
    <script>
      'use strict';

      const e = React.createElement;

      class MostrarLista extends React.Component {
        constructor(props) {
          super(props);
          this.state = { clickeo: false, hecho: false, items: [] };
        }

        componentDidMount() {
        fetch('http://127.0.0.1:3000/api')
          .then(result=>result.json())
          .then(result=>
            this.setState({
              hecho: true,
              items: result.items
          }))
        }

        render() {
          if (this.state.clickeo) {
          return items;
          }

        return e(
          'button',
          { onClick: () => this.setState({ clickeo: true }) },
          'Mostar Lista'
          );
        }
      }

      const domContainer = document.querySelector('#container');
      ReactDOM.render(e(MostrarLista), domContainer);

    </script>

  </body>

</html>