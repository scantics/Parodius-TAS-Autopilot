#Design Notes

##Purpose
The purpose of this document is to delineate the various requirements that define complete autopilot functionality. For now, I am treating it as a dump for considerations that need addressing in the game, as I find them, and to identify bad assumptions. In this way, requirements can be organized according to their scope, and hopefully drive an efficient, maintainable design.

###Background
This design approach is directly inspired by that used for safety-critical flight software, and will adopt several design patterns therefrom.  However, since this application is not safety critical, nor nearly as complex as those used in airplanes, I am making little effort to index these requirements. Rather than exact specifications, this document will hold notional guides for design and implementation. So it's really more of a "keep in mind" document.

-As the menu is entirely different from the rest of the game and appears only once, at the beginning, the menu navigation procedure is not a control system, and therefore statements about control systems in this document do not apply to it

-Each control system will need to have uninterrupted control over a given window of time, in order to use save states and explore multiple paths to reach each goal.

-An overarching goal will be determined by the mode control, while the control system that is currently engaged will determine appropriate subgoals to pursue given the state of the game. Each control system shall communicate its readiness to engage to the mode control, and the mode control will engage the ready control system with the highest priority.

-Each frame, a sprite table containing all hitboxes and object types shall be generated before the mode control or any control system executes
--In addition, before the mode control or any control system executes, the sprite table shall be read and motion that would cause death shall be pre-computed and left unavailable to control systems
---That is, control systems shall select motion inputs from a list of those available.


##Commands
The Parodius Autopilot (PAP) control laws shall generate 

##Mode of Operation
The PAP shall engage modes of operation that determine the appropriate source of commands according to local goals in the game. Examples include navigating the menu, entertainment, and killing either for upgrades or advancement (boss fights). Most mode switching will be between entertainment and advancement, so 

##Powerup Get Mode
This should kill all enemies on screen and keep track of which enemies drop powerups, and then replay that screen in order to make only necessary kills.
Human experimentation will be required, e.g. to help the system know that fruity pebble heads have to all be killed to drop a powerup.
Only needs to perform once, since we will never lose power-ups?

##Entertainment Mode
This should identify and perform opportune stunts such as barnstorming, kissing, spelling, and orbiting to the music.
Use save states to identify barnstorming targets etc, in order to position self to not miss the opportunity.
Dancing: Using song data, change direction only when a note changes.
