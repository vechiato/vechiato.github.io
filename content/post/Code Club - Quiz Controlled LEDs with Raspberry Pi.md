---
author: "Marcus Vechiato"
title: "Code Club - Quiz Controlled LEDs"
date: "2024-12-11"
thumbnail: "/obsidian/code_club_thumb.jpeg"
publish: true
tags: 
  - code club
  - python
  - iot
  - raspberry pi
--- 
# **Quiz Controlled LEDs with Raspberry Pi**

Here's a challenge design for someone learning Python with a Raspberry Pi that incorporates asking questions and controlling LEDs.

## **Objective:**  

Create a Python-based LED game where players answer questions. Correct answers turn on a green LED, while wrong answers flash a red LED multiple times.

![image](/obsidian/code_club_thumb.jpeg)
---

## **Requirements:**

### **Hardware:**

- Raspberry Pi (with GPIO capabilities)
- 1 green LED for correct answers
- 1 red LED for incorrect answers
- 2 330Ω resistors
- Breadboard and jumper wires
    
### **Python Concepts:**

- `if`/`else` statements
- Loops
- Functions
- Basic GPIO control

---

## **Challenge Overview:** 

### Game Rules:

- The game asks 5 multiple-choice questions.
- Players respond by entering the correct letter (e.g., A, B, C).
    If the answer is correct:
        The green LED lights up for 1 second.
        The player gets a congratulatory message.
    If the answer is incorrect:
        The red LED flashes 3 times.
        A message tells the player the correct answer.
    The game ends with a score summary.

### **Steps:**

#### 1. **Setup the LEDs**:

- Connect the LEDs to two GPIO pins (e.g., GPIO17 and GPIO18).
- Use resistors to protect the LEDs.
- Connect the cathode (short leg) of each LED to the ground (negative -).

![image](/obsidian/ledquiz_boardbred.png)

**Raspberry 3b Pinout** 
![image](/obsidian/rpi3b_pinout.png)

**Raspberry Pi 4 Pinout**
![image](/obsidian/rpi5_pinout.png)

**Raspberry Pi 5 Pinout **
![image](/obsidian/rpi4_pinout.png)

#### 2. **Write the Code**:

Create a Python program that:

- Asks the user a question (e.g., "Is Python a programming language? (yes/no)").
- If the user answers correctly, turn on one LED for a short time.
- If the user answers incorrectly, turn on a different LED or flash it to indicate an error.

---
### **Example Code (Starter Template)**

```python
from gpiozero import LED
import time

LED_GREEN = LED(18)  # Green LED pin
LED_RED = LED(17)    # Red LED pin

# Functions
def correct_answer():
    """
    Turn on the green LED for 1 second.
    """
    LED_GREEN.on()
    time.sleep(1)
    LED_GREEN.off()

def wrong_answer():
    """
    Flash the red LED 3 times with 0.5-second intervals.
    """
    # TODO: Write the code to flash the red LED 3 times
    # Hint: Use a loop and GPIO.output

def get_valid_input():
    """
    Repeatedly ask the user for input until a valid answer (A, B, or C) is provided.
    """
    valid_answers = ['A', 'B', 'C']
    while True:
        user_input = input("Your answer (A/B/C): ").strip().upper()
        if user_input in valid_answers:
            return user_input
        else:
            print("Invalid input! Please choose A, B, or C.")

# Questions and answers
questions = [
    {"question": "What is 5 + 3? \nA. 6\nB. 8\nC. 10\nYour answer: ", "answer": "B"},
    {"question": "What is the capital of France? \nA. Rome\nB. Paris\nC. Berlin\nYour answer: ", "answer": "B"},
    {"question": "What is the color of the sky? \nA. Blue\nB. Green\nC. Yellow\nYour answer: ", "answer": "A"},
    {"question": "Which planet is known as the Red Planet? \nA. Earth\nB. Mars\nC. Venus\nYour answer: ", "answer": "B"},
    {"question": "What is the square root of 16? \nA. 2\nB. 4\nC. 8\nYour answer: ", "answer": "B"}
]

# Main Quiz Logic
score = 0
for q in questions:
	print(q["question"]) 
	answer = get_valid_input() # Ensure we get a valid input

	# TODO: Add the logic to check if the answer is correct
	# Hint: Compare the user's input to q["answer"]
	if ...:  # Complete this condition
		print("Correct!")
		correct_answer()
		score += 1
	else:
		print(f"Wrong! The correct answer was {q['answer']}.")
		wrong_answer()

# Final score
print(f"Game over! You scored {score} out of {len(questions)}.")
```

### **Tasks:** 

1. **Complete the `wrong_answer()` Function**:
    - Write a loop to flash the red LED 3 times.
2. **Write the Quiz Logic**:
    - Fill in the condition to check if the player's answer matches the correct one.
4. **Test the Code**:
    - Ensure the LEDs respond correctly based on the answers.
5. **Enhance the Game** (Optional):
    - Add more questions or features, like a timer or score tracking.

---

### **Hints to Guide Learners**

- Use `GPIO.output(LED_GREEN, GPIO.HIGH)` to turn on an LED and `GPIO.output(LED_GREEN, GPIO.LOW)` to turn it off.
- Use `time.sleep(seconds)` to add delays.
- Recall the syntax for loops (`for` or `while`) and conditionals (`if/else`).

---

### **Challenge (Optional)**:

**Suggested Add-Ons for Customisation:**

1. **Timer:** Add a countdown timer for each question to make it more challenging.
2. **Lose Points:** Take 1 point if the given answer is not correct.
3. **Difficulty Levels:** Include an option to choose between Easy, Medium, and Hard questions.

