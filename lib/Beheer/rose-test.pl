   #
    # HTML form/field abstraction
    #

    use Rose::HTML::Form;

    $form = Rose::HTML::Form->new(action => '/foo',
                                  method => 'post');

    $form->add_fields
    (
      name   => { type => 'text', size => 20, required => 1 },
      height => { type => 'text', size => 5, maxlength => 5 },
      bday   => { type => 'datetime' },
    );

    $form->params(name => 'John', height => '6ft', bday => '01/24/1984');

    $form->init_fields();

    $bday = $form->field('bday')->internal_value; # DateTime object

    print $bday->strftime('%A'); # Tuesday

    print $form->field('bday')->html;

    #
    # Generic HTML objects
    #

    $obj = Rose::HTML::Object->new('p');

    $obj->push_child('hello'); # text node
    $obj->add_child(' ');      # text node

    # Add two children: HTML object with text node child
    $obj->add_children(
      Rose::HTML::Object->new(element  => 'b',
                              children => [ 'world' ]));

    # Serialize to HTML
    print $obj->html; # prints: <p>hello <b>world</b></p>


1;

