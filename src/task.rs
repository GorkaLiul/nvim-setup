
#[derive(Debug, Clone)]
struct Task{
    status: String, 
    title: String
}

pub struct TaskList{ list : Vec<Task>
}

impl Default for TaskList{
    fn default() -> Self {
        Self::new()
    }
}
impl TaskList {
    pub fn new() -> Self {
        TaskList{list : Vec::new()}
    }

    pub fn from_task(task : Task) -> Self{
        TaskList{list : vec![task]}
    }
}
