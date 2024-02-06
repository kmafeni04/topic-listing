local lapis = require("lapis")
local app = lapis.Application()
app:enable("etlua")
app.layout = require "views.layout"

-- routes --

app:get("/", function()
	return { render = "pages.index" }
end)

app:get("/browse_topics", function()
	return { render = "pages.browse_topics" }
end)

app:get("/how_it_works", function()
	return { render = "pages.how_it_works" }
end)

app:get("/faqs", function()
	return { render = "pages.faqs" }
end)

app:get("/contact", function()
	return { render = "pages.contact" }
end)
-- components --

app:get("/card1", function()
	Header = "Web Design"
	Counter = "14"
	Paragraph = "Topic listing Template based on Bootstrap 5"
	return {
		render = "components.card" }
end)

app:get("/card2", function()
	Header = "Graphic"
	Counter = "75"
	Paragraph = "Lorem ipsum dolor sit amet, consectetuer"
	return { render = "components.card" }
end)

app:get("/card3", function()
	Header = "Logo Design"
	Counter = "100"
	Paragraph = "Lorem ipsum dolor sit amet, consectetuer"
	return { render = "components.card" }
end)

app:get("/dropdown1", function()
	Header = "What is topic listing?"
	Paragraph =
	"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis"
	return {render = "components.dropdown"}
end)

app:get("/dropdown2", function()
	Header = "How to find a topic?"
	Paragraph =
	"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis"
	return {render = "components.dropdown"}
end)
app:get("/dropdown3", function()
	Header = "Does it need to be paid?"
	Paragraph =
	"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis"
	return {render = "components.dropdown"}
end)



return app
