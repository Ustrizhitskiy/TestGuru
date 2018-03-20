# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([
        { title: 'Frontend' },
        { title: 'Backend'},
        { title: 'Machine Learning' },
        ])

Test.create([
        { title: 'HTML.Begin', level: 0, category_id: 1 },
        { title: 'HTML.Middle', level: 1, category_id: 1 }
        { title: 'Ruby', level: 1, category_id: 2 },
        { title: 'CSS', level: 1, category_id: 1 },
        { title: 'Phyton', level: 2, category_id: 3 }
        ])

Question.create([
        { body: 'Почему в браузере не отображается текст, расположенный между тегами <!-- и -->?', test_id: 1 },
        { body: 'Какое написание тега из приведенных вариантов правильное?', test_id: 1 },
        { body: 'Фоновая картинка задаётся CSS-свойством', test_id: 4 },
        { body: 'Изменение кода без изменения его функциональности - это:', test_id: 3 },
        { body: 'PYTHON является:', test_id: 5 }
        ])

Answer.create([
        { body: 'Это команды для поисковых систем, а не для браузеров.', question_id: 1 },
        { body: 'Потому что таких тегов не существует, и браузер их игнорирует.', question_id: 1 },
        { body: 'Это комментарий к коду, поэтому он не выводится', correct: true, question_id: 1 },

        { body: '"tag"', question_id: 2 },
        { body: '{/tag}', question_id: 2 },
        { body: '<tag>'. corrct: true, question_id: 2 },

        { body: 'background-repeat', question_id: 3 },
        { body: 'background-image', correct: true, question_id: 3 },

        { body: 'Полиморфизм', question_id: 4 },
        { body: 'Рефакторинг', correct: true, question_id: 4 },
        { body: 'Интерфес', question_id: 4 },

        { body: 'Машинно-ориентрованным языком (низкого уровня)', question_id: 5 },
        { body: 'Языком высокого уровня', correct: true, question_id: 5 },
        { body: 'Объектно-ориентированным языком', question_id: 5 }
        ])

User.create([
        { first_name: 'Andrey', last_name: 'Ivanov' },
        { first_name: 'Alexey', last_name: 'Petrov' }
        ])

TestsUser.create([
        { user_id: 1, test_id: 1 },
        { user_id: 2, test_id: 3 },
        { user_id: 2, test_id: 4 }
        ])
