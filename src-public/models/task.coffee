app.factory 'Task', (Parse) ->
  class Task extends Parse.Model
    @configure "Task", "title"
