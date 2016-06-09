Условия:
 1. Есть множество страниц модели - Page
 2. Каждая страница может иметь много Widget
 3. Каждый Widget может находиться на многих страницах Page
 4. Widget имеет поле element, которое может быть любым объектом, имеющим связь has_one :widget, as: :element
 5. В данном примере существует два обхекта с такими связями Text и Picture
 6. Объекты Widget могут иметь множество атрибутов WidgetAttr
 7. WidgetAttr имеет поля name, atype и value, где atype - некий пользовательский тип, с которым можно будет работать во вьюхе при отображении виджета, остальные поля без комментариев

![Общая схема](/diagram.PNG)

Создаем новую страницу
 [1] pry(main)> p2 = Page.create! title: 'Page 2'
 => #<Page:0x007fb468077460
  id: 4,
  title: "Page 2"

Создаем объект типа Text
```
[3] pry(main)> t1 = Text.new body: 'text 111'
=> #<Text:0x000000049a75a0 id: nil, body: "text 111", created_at: nil, updated_at: nil>
```

Создаем объект типа Picture
```
[4] pry(main)> pic1 = Picture.new url: 'http://localhost/pic1.png'
=> #<Picture:0x000000048c4de0 id: nil, url: "http://localhost/pic1.png", created_at: nil, updated_at: nil>
```

Добавляем на ранее созданную страницу p2 Widget-ы с элементами Text и Picture
```
[5] pry(main)> p2.widgets.create! element: t1
=> #<Widget:0x000000047ecb48
 id: 5,
 name: nil,
 element_type: "Text",
 element_id: 4

[6] pry(main)> p2.widgets.create! element: pic1
=> #<Widget:0x000000045dc588
 id: 6,
 name: nil,
 element_type: "Picture",
 element_id: 4
```

Отбираем Widget-ы на выбраной странице
```
[7] pry(main)> p2.widgets
=> [#<Widget:0x000000047ecb48
  id: 5,
  name: nil,
  element_type: "Text",
  element_id: 4
 #<Widget:0x000000045dc588
  id: 6,
  name: nil,
  element_type: "Picture",
  element_id: 4
```

Добираемся до конкретного интересующего нас элемента
```
[9] pry(main)> p2.widgets[0].element
=> #<Text:0x000000049a75a0
 id: 4,
 body: "text 111",
```

Если во вьюхе вызвать ```render p2.widgets[1].element``` то контроллер определит тип объекта, найдет соответствующий ему партиал и отрисует его
```
[20] pry(main)> ApplicationController.renderer.render  p2.widgets[1].element
ActionView::MissingTemplate: Missing partial pictures/_picture ...

[21] pry(main)> ApplicationController.renderer.render  p2.widgets[0].element
ActionView::MissingTemplate: Missing partial texts/_text ...
```
В данном примере показаны ошибки, потому что я не делал вьюхи с партиалами для данных объектов, но суть в том, что если бы они были рельса нашла бы их и отрисовала

Устанавливаем атрибуты виджетов
```
[28] pry(main)> w.widget_attrs.create! name: 'x', atype: 0, value: '1'
=> #<WidgetAttr:0x007fb468227cd8
 id: 3,
 widget_id: 1,
 name: "x",
 value: "1",
 atype: 0

[29] pry(main)> w.widget_attrs.create! name: 'y', atype: 0, value: '20'
=> #<WidgetAttr:0x007fb4740eeae0
 id: 4,
 widget_id: 1,
 name: "y",
 value: "20",
 atype: 0
```
