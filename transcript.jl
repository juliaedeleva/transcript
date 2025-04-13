using HTTP, JSON, WAV

secret_key = ENV["OPENAI_API_KEY"]
model = "whisper-1"
filename = "220525_0010_sample52-60.mp3"
output_filename = "transcription.txt"

# Prepare the HTTP request
url = "https://api.openai.com/v1/audio/transcriptions"
headers = [
    "Authorization" => "Bearer $secret_key"
]

# Create form data with file
form = HTTP.Form(Dict(
    "model" => model,
    "file" => HTTP.Multipart("file", open("temp_chunk_1.wav"), "audio/mp3")
))

# Send the request
response = HTTP.post(url, headers, form)

# Parse the response
response_data = JSON.parse(String(response.body))
transcription_text = response_data["text"]

# Print the transcription result
println(transcription_text)

# Save the transcription result to a file
open(output_filename, "w") do file
    write(file, transcription_text)
end
