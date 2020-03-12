json.partial! "burgers/burger", burger: @burger
json.nutriments do
    json.array! @burger.nutriments
end