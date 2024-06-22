        var jsonUrl = 'https://testingcf.jsdelivr.net/gh/lxl-xiaolong/lxl-xiaolong.github.io@master/json/links-20240622-1.json';

        // jQuery function to get JSON data and generate HTML
        function getJsonAndGenerateHtml() {
            $.ajax({
                    url: jsonUrl,
                    type: 'GET',
                    dataType: 'json',
                    success: function(data) {
                        // Dynamically generate the category list
                        var categoryList = document.getElementById('category-list');
                        data.categories.forEach(category => {
                            var categoryId = category.name.toLowerCase().replace(' ', '-');
                            var li = document.createElement('li');
                            li.textContent = category.name;
                            li.onclick = function() {
                                var anchor = document.getElementById(categoryId);
                                if (anchor) {
                                    anchor.scrollIntoView({ behavior: 'smooth', block: 'start' });
                                }
                            };
                            categoryList.appendChild(li);
                        });

                        // Dynamically generate the links
                        var linksContainer = document.getElementById('links-container');
                        data.categories.forEach(category => {
                            var categoryId = category.name.toLowerCase().replace(' ', '-');
                            var h2 = document.createElement('h2');
                            h2.id = categoryId;
                            h2.textContent = category.name;
                            linksContainer.appendChild(h2);

                            var linksColumns = document.createElement('div');
                            linksColumns.className = 'links-columns';
                            category.links.forEach(link => {
                                var linkColumn = document.createElement('div');
                                linkColumn.className = 'links-column';
                                var ul = document.createElement('ul');
                                var li = document.createElement('li');
                                var a = document.createElement('a');
                                a.href = link.url;
                                a.textContent = link.name;
                                li.appendChild(a);
                                ul.appendChild(li);
                                linkColumn.appendChild(ul);
                                linksColumns.appendChild(linkColumn);
                            });
                            linksContainer.appendChild(linksColumns);
                        });

                        // Add event listener for the search box
                        var searchBox = document.querySelector('.search-box');
                        searchBox.addEventListener('input', function(event) {
                            var query = event.target.value.toLowerCase();
                            var headers = linksContainer.querySelectorAll('h2');
                            var items = linksContainer.querySelectorAll('.links-column li');
                            headers.forEach(function(header) {
                                var text = header.textContent.toLowerCase();
                                if (text.includes(query)) {
                                    header.style.display = '';
                                } else {
                                    header.style.display = 'none';
                                }
                            });
                            items.forEach(function(item) {
                                var text = item.textContent.toLowerCase();
                                if (text.includes(query)) {
                                    item.style.display = '';
                                } else {
                                    item.style.display = 'none';
                                }
                            });
                        });
                    },
                    error: function(error) {
                        console.error('There has been a problem with your fetch operation:', error);
                    }
                });
            }

            // Call the function to get the JSON data and generate HTML
            getJsonAndGenerateHtml();
 
