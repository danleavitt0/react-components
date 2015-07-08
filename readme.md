# Components

- [Header]('#header')
- [Card]()
  - [Card]()
  - [Card Title]()
  - [Card Content]()
- [ColumnLayout]()

## Get Started

To use these components, import from the package

```js
import {Header} from 'react-components-9dots'
```

or import multiple components at once

```js
import {Card, CardTitle, CardContent} from 'react-components-9dots'
```

Then use the the components like HTML elements.

```html
<div>
  <Header />
  <Card />
</div>
```

## Header
<a name='header'/>
Creates a toolbar with a search box inside of it. This should be used for creating the top navigation bar for your website.
```html
<Header />
```

### Properties

- title (string)
Sets the title that appears on the website
```html
<Header title = 'Header example' />
```

- style (object)
Overwrites the default styles of the Header element
```html
<Header style = {styles.header} />
```

## Card

Creates a card for displaying information. A card should normally be created using three elements: `Card`, `CardTitle`, and `CardContent`

### Card
Creates the outer card container. All of the information for the card should be inside of the `Card` element.
```html
<Card>
  Content
</Card>
```

### Properties

- style (object)
Overwrites the default styles of the component
```html
<Card style = {styles.card}>
  Content
</Card>
```

### CardTitle
Creates a title bar inside of the card. The CardTitle has a default color of 'tomato'
```html
<Card>
  <CardTitle />
</Card>
```

### Properties

- content (string)
The text that should be displayed in the title of the card
```html
<Card>
  <CardTitle content = 'Example Title' />
</Card>
```

- style (object)
Overwrites the default styles of the component
```html
<Card>
  <CardTitle style = {styles.cardTitle} />
</Card>
```

### CardContent
This element creates an area to store the information for the card.
```html
<Card>
  <CardTitle title = 'Example Title' />
  <CardContent>
    <p> Information </p>
    <p> More Information </p>
  </CardContent>
</Card>
```

## ColumnLayout
Creates a grid layout for displaying information. This component needs to be supplied with an array of react components to be displayed.

```html
<ColumnLayout />
```

### Properties

- cards (array)
An array of cards that should be displayed in the column layout
```html
<ColumnLayout cards = {this.cards} />
```

- width (number)
A number that sets how wide each column is
```html
<ColumnLayout cards = {this.cards} width = {350} />
```
