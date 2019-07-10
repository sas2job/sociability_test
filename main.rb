# Задача 26-2 — Рефакторинг теста
# ==================================
# Тест на уровень общительности
# ==================================

# encoding: utf-8

# Подключаем классы Test из test.rb и ResultPrinter из result_printer.rb
require_relative "lib/test"
require_relative "lib/result_printer"

puts "Тест на уровень общительности."
puts "Версия № 7. Для рефакторинга." 
puts

# Создание объектов
test = Test.new
result_printer = ResultPrinter.new

# Основное тело программы.
until test.finished?
  # Пока тест не закончился, пользователю задаются вопросы
  puts test.next_question
  puts
  # Ввод данных от пользователя

  # Обнуляем user_input
  user_input = nil

  #  цикл повторяющий просьбу ввести ответ до тех пор, пока не будет введен правильный ответ
  until (user_input == "yes" or user_input == "no" or user_input == "st")
    puts "введите 'yes' или 'no' или 'st aka sometimes' и нажмите Enter"
    user_input = STDIN.gets.chomp.downcase
  end
  puts
  test.answer_current_question(user_input)
end

# Вывод результатов теста
result_printer.print_result(test)
