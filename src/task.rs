#[derive(Debug, Clone)]
struct Task {
status : bool,
description : String 
}

#[derive(Debug)]
pub struct TaskList{
    tasks  : Vec<Task>
}

impl TaskList {
    pub fn new() -> Self{
       Self { tasks : Vec::new()} 
    }

    pub fn add_task(&mut self, title: &str){
       self.tasks.push(Task {
            status : false, 
            description : title.to_string()
        });
    }
    
    pub fn remove_task(&mut self, title : &str){
        todo!();
    } 
    
}
