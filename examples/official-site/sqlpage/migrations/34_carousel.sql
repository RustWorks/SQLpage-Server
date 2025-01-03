INSERT INTO component (name, description, icon, introduced_in_version)
VALUES (
        'carousel',
        'A carousel is used to display images. When used with multiple images, it will cycle through them automatically or with controls, creating a slideshow.',
        'carousel-horizontal',
        '0.18.3'
    );
INSERT INTO parameter (
        component,
        name,
        description,
        type,
        top_level,
        optional
    )
VALUES
    (
        'carousel',
        'title',
        'A name to display at the top of the carousel.',
        'TEXT',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'indicators',
        'Style of image indicators (square or dot).',
        'TEXT',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'vertical',
        'Whether to use the vertical image indicators.',
        'BOOLEAN',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'controls',
        'Whether to show the control links to go previous or next item.',
        'BOOLEAN',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'width',
        'Width of the component, between 1 and 12. Default is 12.',
        'INTEGER',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'auto',
        'Whether to automatically cycle through the carousel items. Default is false.',
        'BOOLEAN',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'center',
        'Whether to center the carousel.',
        'BOOLEAN',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'fade',
        'Whether to apply the fading effect.',
        'BOOLEAN',
        TRUE,
        TRUE
    ),
    (
        'carousel',
        'image',
        'The URL (absolute or relative) of an image to display in the carousel.',
        'URL',
        FALSE,
        FALSE
    ),
    (
        'carousel',
        'title',
        'Add caption to the slide.',
        'TEXT',
        FALSE,
        TRUE
    ),
    (
        'carousel',
        'description',
        'A short paragraph.',
        'TEXT',
        FALSE,
        TRUE
    ),
    (
        'carousel',
        'description_md',
        'A short paragraph formatted using markdown.',
        'TEXT',
        FALSE,
        TRUE
    ),
    (
        'carousel',
        'width',
        'The width of the image, in pixels.',
        'INTEGER',
        FALSE,
        TRUE
    ),
    (
        'carousel',
        'height',
        'The height of the image, in pixels.',
        'INTEGER',
        FALSE,
        TRUE
    );
-- Insert example(s) for the component
INSERT INTO example(component, description, properties)
VALUES (
        'carousel',
        'A basic example of carousel',
        JSON(
            '[
                {"component":"carousel","name":"cats1","title":"Famous Database Animals"},
                {"image":"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Elefantes_africanos_de_sabana_%28Loxodonta_africana%29%2C_Elephant_Sands%2C_Botsuana%2C_2018-07-28%2C_DD_114-117_PAN.jpg/2560px-Elefantes_africanos_de_sabana_%28Loxodonta_africana%29%2C_Elephant_Sands%2C_Botsuana%2C_2018-07-28%2C_DD_114-117_PAN.jpg"},
                {"image":"https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Penguin_Island_panorama_with_ferry_and_dolphins_in_foreground%2C_March_2023_06.jpg/1280px-Penguin_Island_panorama_with_ferry_and_dolphins_in_foreground%2C_March_2023_06.jpg"}
                ]'
        )
    ),
    (
        'carousel',
        'An advanced example of carousel with controls',
        JSON(
            '[
                {"component":"carousel","title":"SQL web apps","width":6, "center":true,"controls":true,"auto":true},
                {"image":"/sqlpage_cover_image.webp","title":"SQLPage is modern","description":"Built by engineers who have built so many web applications the old way, they decided they just wouldn''t anymore.", "height": 512},
                {"image":"/sqlpage_illustration_alien.webp","title":"SQLPage is easy", "description":"SQLPage connects to your database, then it turns your SQL queries into nice websites.", "height": 512}
                ]'
        )
    );