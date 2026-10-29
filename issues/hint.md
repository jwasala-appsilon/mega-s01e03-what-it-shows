## Problem

Booking-v3 displays `MM/DD/YYYY` in day-first tenant locales. People follow the displayed hint, but the form reads their entry in tenant date order, moving the booking to another date.

## Evidence

- 33 of the 412 unique reports merged into support ticket #4471 have this cause, across Alder Physio, Copper Studio, and Pale Harbour.
- Example: R-41230 at Copper Studio reports 1 June instead of 6 January.
- These are form reports; 15 were tagged as parser cases at intake. Fixing the shared parser alone does not resolve the misleading form hint.

## Done when

Booking-v3 shows a hint matching each tenant's date order and parses the entered date consistently; tests cover ambiguous day/month values for all three affected tenants.
