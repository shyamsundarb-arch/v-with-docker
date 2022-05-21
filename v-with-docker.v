module main

import vweb

struct App {
    vweb.Context
}

fn main() {
	vweb.run(&App{}, 8080)
}

pub fn (mut app App) index() vweb.Result {
	return app.text('Hello world from vweb running within a container!')
}