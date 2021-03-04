# configpanel
A very simple, single-file properties panel for use with Java Swing

## Idea

Building interfaces can be a long, boring process. Especially if your goal is simple to have a graphical way to configure something. This project allows you to build simple interfaces very simply. For example, to configure a `Figura` object that looks like this...

~~~{.java}
    public static class Figura {
        private String nombre;

        private int grosor = 1; 
        private double transparencia = 0;
        // ... getters and setters
    }
~~~

... `configpanel` allows you to build a full control with only this code...

~~~{.java}
    // a ConfigPanel is a Swing JComponent
    ConfigPanel<Figura> config = new ConfigPanel<Figura>();       

    config.addOption(new IntegerOption<Figura>( 
      "grosor (px)",                    // label text
      "pixeles de grosor del borde",    // tooltip  
      "grosor",                         // field name -- must have a getter and setter defined
      1, 10))                           // max and min
    .addOption(new DoubleOption<Figura>( 
      "% transparencia",
      "transparencia del borde",
      "transparencia",
      0, 100,
      100))
    .endOptions();
~~~
