This is not shrubbery, but it is shrubberish.

Shrubberish is my attempt at building a shrubbery from scratch in the dumbest possible way in order to learn about how `~hastuc-dibtux`'s shrubbery works. Some deviations I'm playing with:

- No pail safety. Devs have to unwrap and typecheck their pails all the time in the logic flow anyway; removing the system-level guarantees on top of this removes the vast majority of the work in writing shrubbery. State is injected in the bowl.
- All HTTP requests to `/shrubberish/path/to/shrub` are forwarded to the shrub in question as a poke, who can handle it or not. This greatly simplifies the rendering story. Overlay renderers can exist in the namespace at `/overlay/path/to/shrub`, use `/path/to/shrub` as a dependency, and do their own thing.
- No Clay syncing. You'll write your shrubs from a UI and poke them into Gall agent state as cords.
