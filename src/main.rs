use std::env::args;

use clap;
use todo::task;
fn main() {
    println!("Hello, world!");
    let args : Vec<String> = args().collect();
    dbg!(args); 

    let mut items = task::TaskList::new();
    println!("{:?}", items);


    println!("//////////////////////7  \n");

    items.add_task("eat");
    items.add_task("fly");
    items.add_task("dry");
    items.add_task("dry");
    println!("{:?}", items);

    items.remove_task("shgkjah");
}
