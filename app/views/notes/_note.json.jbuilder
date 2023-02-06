json.extract! note, :id, :title, :created, :content, :created_at, :updated_at
json.url note_url(note, format: :json)
