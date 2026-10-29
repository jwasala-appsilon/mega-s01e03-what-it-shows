## Problem

The shared parser reads dates month first for day-first tenant locales. A date such as 7 April can become 4 July in a booking or calendar invite.

## Evidence

- 379 of the 412 unique reports merged into support ticket #4471 have this cause, across 11 tenants.
- Example: R-41200 at Harbour Dental says a 7 April reminder went out on 4 July.
- The kb export's `causeOf` classifies these by tenant locale, booking form, and channel. Intake tags alone disagree for 23 of these reports.

## Done when

The shared parser preserves day-first dates for the affected tenants; tests cover ambiguous day/month values and downstream invites.
