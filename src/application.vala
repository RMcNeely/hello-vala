public class HelloApp : Gtk.Application {
    public HelloApp () {
		Object (
			application_id: "com.github.rmcneely.hello-vala",
			flags: ApplicationFlags.FLAGS_NONE	
		);
	}

	protected override void activate () {
		var main_window = new Gtk.ApplicationWindow (this);
		main_window.default_height = 300;
		main_window.default_width = 300;
		main_window.title = "Hello World";
		main_window.show_all ();
	}

	public static int main (string[] args) {
		var app = new HelloApp ();
		return app.run (args);
	}
}
