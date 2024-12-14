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

### **LED Wiring Test Application** 

This program will sequentially blink the red LED, green LED, and then both LEDs together, to visually confirm that the wiring and components are working correctly. 

- **Create a new file wiring_test.py**
- **Copy the code and paste into the new file** 

```python
from gpiozero import LED
import time

# Define LEDs
LED_RED = LED(17)    # Red LED pin
LED_GREEN = LED(18)  # Green LED pin

# Functions
def blink_led(led, interval, blink_times:1):
    """
    Blink a given LED
    :param led: The LED object to blink
    :param interval: sleep in seconds
    :blink_times: how many times the led will blink
    """
	for _ in range(blink_times):
        led.on()
        time.sleep(interval)
        led.off()
        time.sleep(interval)

# Test Wiring
def test_wiring():
    """
    Sequentially test each LED and then both together.
    """
    print("Starting wiring test...")

    # Test Red LED
    print("Testing Red LED...")
    blink_led(LED_RED,0.5,5)
    print("Red LED test complete.")

    # Test Green LED
    print("Testing Green LED...")
    blink_led(LED_GREEN,0.5,5)
    print("Green LED test complete.")

    print("Wiring test complete! If all LEDs blinked as expected, your wiring is correct.")

# Main Program
if __name__ == "__main__":
    try:
        test_wiring()
    except KeyboardInterrupt:
        print("\nTest interrupted.")

```

- **Run wiring_test.py** and you should see this output:

```bash
$ python wiring_test.py

Starting wiring test...
Testing Red LED...
Red LED test complete.
Testing Green LED...
Green LED test complete.
Testing Both LEDs Together...
Both LEDs test complete.
Wiring test complete! If all LEDs blinked as expected, your wiring is correct.
Cleaning up GPIO...
```

---
### **Example Code (Starter Template)**

```python
from gpiozero import LED
import time

LED_GREEN = LED(18)  # Green LED pin
LED_RED = LED(17)    # Red LED pin

# Functions
def indicate_correct():
    """
    Turn on the green LED for 1 second.
    """
    LED_GREEN.on()
    time.sleep(1)
    LED_GREEN.off()

def indicate_wrong():
    """
    Flash the red LED 3 times with 0.5-second intervals.
    """
    # TODO: Write the code to flash the red LED 3 times
    # Hint: Use a loop 

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
    # Format: [question, option1, option2, option3, correct_answer]
    ["What is 5 + 3?", "6", "8", "10", "B"],
    ["What is the capital of France?", "Rome", "Paris", "Berlin", "B"],
    ["What is the color of the sky?", "Blue", "Green", "Yellow", "A"],
    ["Which planet is known as the Red Planet?", "Earth", "Mars", "Venus", "B"],
    ["What is the square root of 16?", "2", "4", "8", "B"]
]

# Main Quiz Logic
score = 0 
for q in questions: 

	# Unpack question and options 
	question, option1, option2, option3, correct_answer = q 
	# Display the question and options 
	print(f"{question}")
	print(f"A. {option1}")
	print(f"B. {option2}")
	print(f"C. {option3}") 
	answer = get_valid_input() # Get valid input 
	
	# TODO: Add the logic to check if the answer is correct
	# Compare the user's input with the correct answer
	if ...:  # Complete this condition
		print("Correct!")
		indicate_correct()
		score += 1
	else:
		print(f"Wrong! The correct answer was {correct_answer}.")
		indicate_wrong()

# Final score
print(f"Game over! You scored {score} out of {len(questions)}.")
```

---
### **Tasks:** 

1. **Complete the `wrong_answer()` Function**:
    - Write a loop to flash the red LED 3 times.
2. **Write the Quiz Logic**:
    - Fill in the condition to check if the player's answer matches the correct one.
    - Expect lower or capital letter as input. Treat it accordingly.  
3. **Lose Points:** Take 1 point if the given answer is not correct.
4. **Enhance the Game** (Optional):
	- **More questions:** Add 3 additional questions 
	- **Quit:** Exit the quiz if the Q letter is entered. 
	- **Timer:** Add a countdown timer for each question to make it more challenging.
    - **More questions:** Add more questions 

---

### **Hints to Guide Learners**

- Use `time.sleep(seconds)` to add delays.
- Recall the syntax for loops (`for` or `while`) and conditionals (`if/else`).
- upper() and lower() are basic functions to handle string conversion. 



