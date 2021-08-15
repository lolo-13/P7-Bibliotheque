INSERT INTO public.authors(id_author, birth, death, firstname, name)
VALUES 
(nextval('authors_id_author_seq'), '19/02/1976', NULL , 'Maxime', 'Chattam'),
(nextval('authors_id_author_seq'), '24/01/1911', '24/11/1985' , 'René', 'Barjavel'),
(nextval('authors_id_author_seq'), '21/09/1947', NULL , 'Stephen', 'King');

INSERT INTO public.books(id_book, publication_date, summary, title, id_author, id_category)
VALUES
(nextval('books_id_book_seq'), '01/01/1968', 'Dans l immense paysage gelé, les membres des Expéditions Polaires françaises font un relevé sous-glaciaire. Un incroyable phénomène se produit...', 'La nuit des temps', 2, 1),
(nextval('books_id_book_seq'), '01/01/1986', 'Enfants, dans leur petite ville de Derry, Ben, Eddie, Richie et la petite bande du Club des ratés, comme ils se désignaient, ont été confrontés à l horreur absolue…', 'ça', 3, 2),
(nextval('books_id_book_seq'), '01/01/1983', 'Libertyville (Pennsylvanie), un patelin tranquille qui cesse de l être - tranquille...le jour où Arnie, lycéen dans le bel âge ingrat, tombe amoureux de Christine. ', 'Christine', 3, 2),
(nextval('books_id_book_seq'), '01/01/1987', 'Misery Chastain est morte. Paul Sheldon l a tuée avec plaisir. Tout cela est bien normal, Misery Chastain est sa créature, le personnage principal de ses romans.', 'Misery', 3, 2),
(nextval('books_id_book_seq'), '01/01/1983', 'La famille Creed viennent emménager dans la petite ville de Ludlow, dans une grande maison ancienne', 'Simetierre', 3, 2);

INSERT INTO public.categories(id_category, description, name)
VALUES
(nextval('categories_id_category_seq'), 'La science-fiction est un genre narratif qui cherche à décrire un état futur du monde, en s appuyant notamment sur la science actuelle, tout en anticipant ses progrès à venir et leurs conséquences sur l humanité.', 'science-fiction'),
(nextval('categories_id_category_seq'), 'L horreur est un genre littéraire s inscrivant dans le registre de la peur.', 'horreur');

INSERT INTO public.libraries(id_library, address, email, phone)
VALUES
(nextval('libraries_id_library_seq'), '15 rue patati 13300 Salon', 'biblioPatati@gmail.com', '0442857845'),
(nextval('libraries_id_library_seq'), '15 rue patata 13300 Salon', 'biblioPatata@gmail.com', '0442857848');

INSERT INTO public.copies(id_copy, available, id_book, id_library)
VALUES
(nextval('copies_id_copy_seq'), TRUE, 1, 1),
(nextval('copies_id_copy_seq'), TRUE, 1, 1),
(nextval('copies_id_copy_seq'), TRUE, 1, 1),
(nextval('copies_id_copy_seq'), TRUE, 1, 1),
(nextval('copies_id_copy_seq'), FALSE, 1, 1),
(nextval('copies_id_copy_seq'), TRUE, 2, 1),
(nextval('copies_id_copy_seq'), TRUE, 2, 1),
(nextval('copies_id_copy_seq'), TRUE, 2, 1),
(nextval('copies_id_copy_seq'), FALSE, 2, 1),
(nextval('copies_id_copy_seq'), FALSE, 2, 1),
(nextval('copies_id_copy_seq'), TRUE, 2, 2),
(nextval('copies_id_copy_seq'), FALSE, 2, 2),
(nextval('copies_id_copy_seq'), TRUE, 2, 2),
(nextval('copies_id_copy_seq'), TRUE, 2, 2),
(nextval('copies_id_copy_seq'), FALSE, 2, 2),
(nextval('copies_id_copy_seq'), FALSE, 1, 1),
(nextval('copies_id_copy_seq'), FALSE, 2, 1),
(nextval('copies_id_copy_seq'), FALSE, 3, 1),
(nextval('copies_id_copy_seq'), FALSE, 4, 1),
(nextval('copies_id_copy_seq'), TRUE, 5, 1);

INSERT INTO public.users(id_user, email, firstname, name, password, id_library, id_role)
VALUES 
(nextval('users_id_user_seq'), 'admin@gmail.com', 'admin', 'admin', '$2a$10$nRv5ThpdgnCS0sJGJuBrhuBesmOscZ.RvIfD8ZksF/H4isb80IijK', NULL, 1),
(nextval('users_id_user_seq'), 'biblio@gmail.com', 'test', 'Test', '$2a$10$t98QkYmCdcBQNYz0dshBDu8L.IL4YlQyV8vi6EGRF/Ce60vcOxIUe', 1, 3),
(nextval('users_id_user_seq'), 'laurie.compain@gmail.com', 'Laurie', 'Compain', '$2a$10$Oeu37tH0xg7RlnsCZ6maY.uhjbxQ1hNx4LXADxZNpyAyMP3BFLSLO', 1, 2);

INSERT INTO public.roles(id_role, designation)
VALUES 
(nextval('roles_id_role_seq'), 'Admin'),
(nextval('roles_id_role_seq'), 'User'),
(nextval('roles_id_role_seq'), 'Employee');

INSERT INTO public.borrowings(id_borrowing, borrowing_date, borrowing_limit_date, renewal, returned, id_copy, id_user)
VALUES 
(nextval('borrowings_id_borrowing_seq'), '10/06/2021', '08/07/2021', FALSE, FALSE, 16, 2),
(nextval('borrowings_id_borrowing_seq'), '12/05/2021', '09/06/2021', FALSE, FALSE, 17, 2),
(nextval('borrowings_id_borrowing_seq'), '20/04/2021', '15/06/2021', TRUE, FALSE, 18, 2),
(nextval('borrowings_id_borrowing_seq'), '03/06/2021', '01/07/2021', FALSE, FALSE, 19, 2),
(nextval('borrowings_id_borrowing_seq'), '02/01/2021', '30/01/2021', FALSE, TRUE, 20, 2);