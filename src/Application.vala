public class Myapp : Gtk.Application {
    public Myapp(){
        Object (
            application_id: "com.github.devlinarptiw.eOS",
            flags: ApplicationFlags.FLAGS_NONE
            );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this){
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        var button_hello = new Gtk.Button.with_label ("Click me!"){
        margin=12
        };
        button_hello.clicked.connect(()=>{
            button_hello.label="Hello World!";
            //button_hello.sensitive=False;
        });
        main_window.add (button_hello);
        main_window.show_all ();
        }

        public  static int main (string[] args) {
            return new Myapp().run (args);
        }
}
