//#9

enum TaskPriority {
    case low
    case medium
    case high
}

struct Task {
    let title: String
    let description: String
    var priority: TaskPriority
    var completed: Bool = false
}

class TaskManager {
    var tasks = [Task]()
    
    func addTask (title: String, description: String, priority: TaskPriority, completed: Bool) {
        let newTask = Task.init(title: title, description: description, priority: priority, completed: completed)
        tasks.append(newTask)
    }
    
    func changeTaskPriotiry (at index: Int, priority: TaskPriority) {
        tasks[index].priority = priority
    }
    
    func removeTask(at index: Int) {
        tasks.remove(at: index)
    }
    
    func markAsCompleted(at index: Int) {
        tasks[index].completed = true
    }
}

//create task and adjust task's properties:

var taskManager = TaskManager()
taskManager.addTask(title: "Complete assignment", description: "complete task #9", priority: TaskPriority.medium, completed: false)
taskManager.changeTaskPriotiry(at: 0, priority: TaskPriority.high)
taskManager.markAsCompleted(at: 0)

print(taskManager.tasks)

