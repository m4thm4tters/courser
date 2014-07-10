json.array!(@events) do |event|
  json.extract! event, :id, :title, :date
  json.start event.date.to_datetime
  json.color "#a94442"	
end

json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :due
  json.start assignment.due.to_datetime
  json.title "Due: " + assignment.title
  json.url assignments_path(:id => @course.id)
end

json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :title, :date
  json.start lecture.date.to_datetime
  json.title lecture.section + " - " + lecture.title
  json.url lectures_path(:id => @course.id)
  json.color "#488c48"
end