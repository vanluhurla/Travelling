<p align="center">
    <img src="https://i.postimg.cc/KzK8dkjT/temp-Image7y-Qb-JK.avif" width="30%" height="30%">
</p>
<br>

# Travelling App Project
## Design of a screen, inspired by the Trainline app.
<br>

This project aims to present, in a simplified manner, one of the screens of the Trainline app. 
The screen used as a reference was My Tickets, where it is possible to see details of a travel ticket such as:

* departure day; 
* departure time; 
* delay information; 
* arrival time;
* forecast;
* information on which platform the user should go to for boarding.
  
In the centre of the screen, there is a label listing reasons for the user to purchase the ticket with the company. 
At the bottom of the screen, there is a small animation that replaces the "Plan a trip" button.
<br><br>

## File organisation and Simulator

<p align="center">
    <img src="https://i.postimg.cc/xjNd54X1/temp-Imagef7lnq-E.avif" width="100%" height="100%">
</p>
<br>

## Design/Architecture

This project adopts a Swift MVVM-C architecture, featuring a user-friendly interface that is completely escapable.
<br><br>

## App Structure

Design - As it was a screen based on an existing app, the design concept was to keep it as clean as possible. I incorporated the LottieFiles animation library to add a playful touch to the design.

Extension - To keep the project more organised, I utilised the Localizable Strings file, which allowed me to work with my texts in a more seamless manner.

Model - A struct with the list of all the texts that were created in the Localizable Strings file.

Coordinators - There are two coordinators: the first one coordinates the tab bar along with the SceneDelegate, and the second one is the one that communicates between the view model and the view factory.

View - TabBar Controller, View Model, and View Controller are centralised in this section.
<br><br>

## Author

[@vanluhurla](https://www.github.com/vanluhurla)
