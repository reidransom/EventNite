json.extract! user, :id, :fname, :lname, :email
json.set! json.saved_events user.parse_saved_event_ids
