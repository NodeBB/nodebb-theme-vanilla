(function(module) {
	"use strict";

	var Theme = {};

	Theme.defineWidgetAreas = function(areas, callback) {
		areas = areas.concat([
			{
				name: "MOTD",
				template: "categories.tpl",
				location: "motd"
			},
			{
				name: "Categories Sidebar",
				template: "categories.tpl",
				location: "sidebar"
			},
			{
				name: "Category Sidebar",
				template: "category.tpl",
				location: "sidebar"
			},
			{
				name: "Topic Sidebar",
				template: "topic.tpl",
				location: "sidebar"
			},
			{
				name: "Topic Footer",
				template: "topic.tpl",
				location: "footer"
			}
		]);

		callback(null, areas);
	};

	module.exports = Theme;

}(module));