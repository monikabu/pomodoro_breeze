class Pomodoro::TaskList::Dummy < Pomodoro::TaskList::Base

  def tasks
    [
      {
        "id": 995,
        "name": "Todo list",
        "cards": [
          {
            "id": 2742,
            "name": "This is a task",
            "description": "Task description",
            "position": 1,
            "stage_id": 995,
            "color": "",
            "duedate": null,
            "startdate": null,
            "planned_time": 0,
            "total_tracked": 2,
            "todos_count": 5,
            "done_todos": 1,
            "created_at": "2012-11-05T06:04:35Z",
            "updated_at": "2013-02-23T16:39:06Z",
      "user":
            {
            "id": 5,
            "email": "john@breeze.pm",
            "name": "John Doe"
            "avatar": "https://avatarurl.com/avatar.jpg"
           },

            "users": [
              {
                "id": 5,
                "email": "john@breeze.pm",
                "name": "John Doe"
              },
              {
                "id": 6,
                "email": "jake@breeze.pm",
                "name": null
              }
            ],
            "todos": [
              {
                "id": 372,
                "name": "first todo",
                "done": false
              },
              {
                "id": 6,
                "name": "second todo",
                "done": false
              }
            ] ,
            "time_entries": [
              {
                "user_id": 5,
                "user_email": "rene@breeze.pm",
                "user_name": Rene,
                "tracked": 120
              }
            ]
          },
          {
            "id": 4105,
            "name": "Update API",
            "description": null,
            "position": 2,
            "stage_id": 995,
            "color": null,
            "duedate": null,
            "startdate": null,
            "planned_time": 0,
            "total_tracked": 0,
            "todos_count": 0,
            "done_todos": 0,
            "created_at": "2013-02-23T16:38:54Z",
            "updated_at": "2013-02-23T16:39:05Z",
            "users": [],
            "todos": [],
            "time_entries": []

          }]
      },
      {
        "id": 993,
        "name": "Done list",
        "cards": [
          {
            "id": 3532,
            "name": "Try out our API",
            "description": "API is still beta",
            "position": 1,
            "stage_id": 993,
            "color": "",
            "duedate": "2013-02-22",
            "startdate": "2013-02-20",
            "planned_time": 120,
            "total_tracked": 60,
            "todos_count": 1,
            "done_todos": 0,
            "created_at": "2012-12-13T10:52:53Z",
            "updated_at": "2013-02-25T10:12:23Z",
            "users": [
              {
                "id": 5,
                "email": "john@breeze.pm",
                "name": "John Doe"
              }
            ],
            "todos": [],
            "time_entries": [
              {
                "user_id": 5,
                "user_email": "rene@breeze.pm",
                "user_name": Rene,
                "tracked": 120
              }
            ]
          }]
      }
    ]
  end

  def dependent_tasks
    tasks.select { |task| dependent?(task) }
  end

  def dependent?(task)
    task[:dependent]
  end

end
