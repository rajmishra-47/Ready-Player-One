# 📱 Ready-Player-One App (iOS - SwiftUI)

An iOS app designed to help users improve their basic arithmetic skills through engaging and time-based challenges. Developed using **SwiftUI**, following  **MVVM architecture**, and **async/await** for smooth, modern app performance.

---

## 🚀 Features

- 🧠 Practice core arithmetic operations (add, subtract, multiply, divide)
- ⏱️ **Under a Minute Mode**: Solve 60 questions in 60 seconds
- 🎯 **Random 10 Mode**: Practice 10 randomly selected questions with no time limit
- 📈 Real-time feedback and performance summary after each session
- 🧩 Clean, reactive UI using SwiftUI

---

## 🧭 App Flow

1. **Landing Page** – User selects a practice mode
2. **Question Mode** – Display of interactive arithmetic questions
3. **Summary Screen** – Overview of attempted questions and final score

---

## 🛠️ Planned Features

- 🗓️ **High Score History**: Track individual scores over time
- 📅 **Practice Logs**: View practice activity per day along with scores
- 📊 Progress tracking and analytics

---

## 📸 Screenshots & 📺 Demo

Take a quick look at how the app works!

### Screenshots
<p float="left">
  <img src="screenshots/MainMenu.png" width="200" />
  <img src="screenshots/Under-A-Minute.png" width="200" />
  <img src="screenshots/Random-10.png" width="200" />
  <img src="screenshots/Summary.png" width="200" />
</p>

### YouTube Demo
Click the link to watch a short demo of the app in action:  
[Watch the demo on YouTube](https://www.youtube.com/watch?v=3pTyVNcm_bE&ab_channel=RajnandanMishra)

---

## 🏗️ Architecture

The app follows **MVVM (Model-View-ViewModel)** architecture:

- **Model**: Data structures and logic
- **View**: SwiftUI components for UI
- **ViewModel**: Binds data to UI using `@StateObject`, `@Published`, etc.

Uses `async/await` for smooth and responsive asynchronous tasks.

---

## 📲 Getting Started

### Requirements

- macOS with Xcode 13 or later
- iOS 15.0 or later
- Swift 5.5+

### Installation

```bash
# Clone the repository
git clone https://github.com/your-username/math-practice-app.git

# Navigate to the project directory
cd math-practice-app

# Open in Xcode
open MathPracticeApp.xcodeproj
