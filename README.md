# Leaflet Linter

> Microverse Capstone project. This is a Code Linter developed with Ruby to keep your Leaflet maps out of trouble. Includes tests for HTML, JS, JSON and GEOJSON files to get the most out of this amazing library.

Leaflet.js is an awesome library to create interactive web maps. It's so easy that errors are easy to fix. Leaflet-linter was designed to improve even more the experience of working with multiple layers and more complex maps by providing suggestions to style code and avoid future issues.

![Leaflet Linter in action](./app_screenshot.png)

## Main features of this linter

- Identify layers out of layer control Leaflet API
- Detect javascript inside HTML script tag in map page
- Advise to use compressing tools for maps files, like mapshaper.org

## Built With

- Ruby
    - Rubocop
    - Gems
- GitHub Actions
- Javascript
    - Leaflet.js

## Getting Started

Get a local copy of the linter.

```
git clone leaflet-linter.git
```

Move to repo folder and install needed gems

```
cd leaflet-linter && bundle install
```

Sample test provided in ```tests``` folder.

If you want to work on something else, delete files in tests. Then move the files you want to analize to the tests folder.

Then, on your terminal run the next instruction to scan files.

```
main
```

That's it, good luck with your maps!

## Authors

👤 **Angel Mora**

- Github: [@angel-mora](https://github.com/githubhandle)
- Linkedin: [angelmoram](https://linkedin.com/linkedinhandle)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- Thanks to Microverse and TSEs!

## 📝 License

This project is [MIT](lic.url) licensed.

## TO-DO

- Develop ```HTML <script> feature```
- Inspiration: https://github.com/Dandush03/capstone-build-linter