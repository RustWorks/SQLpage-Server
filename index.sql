-- Welcome to SQLPage ! This is a short demonstration of a few things you can do with SQLPage
-- Using the 'shell' component at the top allows you to customize your web page, giving it a title and a description
select 'shell' as component,
    'SQLpage' as title,
    '/' as link,
    'en' as lang,
    'Welcome to SQLPage' as description;
-- Making a web page with SQLPage works by using a set of predefined "components"
--  and filling them with contents from the results of your SQL queries
select 'hero' as component, -- We select a component. The documentation for each component can be found on https://sql.ophir.dev/documentation.sql
    'It works !' as title, -- 'title' is top-level parameter of the 'hero' component
    'If you can see this, then SQLPage is running correctly on your server. Congratulations! ' as description;
-- Properties can be textual, numeric, or booleans

-- Let's start with the text component
SELECT 'text' as component, -- We can switch to another component at any time just with a select statement.
    'Get started' as title;
-- We are now inside the text component. Each row that will be returned by our SELECT queries will be a span of text
-- The text component has a property called "contents" that can be  that we use to set the contents of our block of text
-- and a property called "center" that we use to center the text
SELECT 'In order to get started ' as contents;
select 'visit SQLPage''s website' as contents,
    'https://sql.ophir.dev/your-first-sql-website/' as link,
    true as italics;
SELECT '. You can replace this page''s contents by creating a file named ' as contents;
SELECT 'index.sql' as contents, true as italics;
SELECT ' in the folder where sqlpage is running. ' as contents;
SELECT 'Alternatively, you can create a table called sqlpage_files in your database with the following columns: path, contents, and last_modified.' as contents;
