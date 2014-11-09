Parse.Cloud.beforeSave("Task", function(request, response) {
    request.object.set("random", Math.floor((Math.random() * 100) + 1));
    response.success();
});
