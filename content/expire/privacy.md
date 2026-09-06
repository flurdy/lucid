---
title: "Privacy Policy"
date: 2026-02-25
lastmod: 2026-09-06
description: "Expire Privacy Policy"
---

## Introduction

This Privacy Policy explains how Expire ("the App") handles your information. Expire is a food expiration tracker that helps you monitor what food you have in your fridge, freezer and pantry, and when it expires. Expire is published by Flurdy.

## Summary

- No email, password, name or account sign-up is required.
- Your food list is stored in a cloud database so it syncs across your devices and, if you choose, with your household.
- No analytics, advertising, tracking or crash-reporting services are included.
- Nothing is sold or shared with third parties for marketing.

## Anonymous Identity

When you first open the App it creates an anonymous account with Firebase Authentication. This gives your device a random identifier so your data can be stored and synced. It does not include your email address, name, phone number or any other personal detail. The identifier is kept on your device and is not linked to your identity by us.

If you delete the App or clear its data, a new anonymous identifier is created the next time you open it. Data stored under the old identifier is no longer reachable from the App.

## Information Stored in the Cloud

The App stores the following in Google Firebase Firestore, under your anonymous identifier or your household:

- your food items: name, storage category, expiration date, date added, and optional quantity, unit, notes, opened date and product barcode;
- your item name history, used for autocomplete suggestions; and
- if you use household sharing: the household record, its invite code, the membership list of anonymous identifiers, and any display name you choose to enter.

This data is used only to show your list in the App and keep it in sync. We do not read, analyse or share it. Access is restricted by database rules so that only the owning anonymous identifier, or members of the same household, can read or change it.

## Household Sharing

Household sharing is optional. When you create or join a household with an invite code:

- your personal food items are either copied into the shared household list or deleted, as you choose;
- your personal name history is deleted and not shared;
- every household member can see, add, change and remove every item in the shared list and its name history;
- any household member can remove another member; and
- a display name you enter is visible to the other members of your household.

Anyone who has your invite code can join your household, so share it only with people you trust. Invite codes expire after seven days, and you can regenerate the code at any time from Settings.

## Information Stored on Your Device

The App keeps on your device:

- your anonymous sign-in credentials;
- your notification preferences;
- a cached copy of your household membership; and
- a copy of your food list for offline use, managed by Firestore.

## Camera, Barcode and Text Scanning

The camera is used only when you choose to scan. Barcodes, QR invite codes and photographed expiration dates are processed on your device. Photos taken for date scanning are not uploaded and are not saved to your photo library.

## Third-Party Services

Expire uses the following services:

- **Google Firebase (Authentication and Firestore)** — stores your anonymous account and food data on Google's servers and syncs it between devices. When the App communicates with Firebase, Google receives standard request information such as your IP address. See [Google's privacy policy](https://policies.google.com/privacy).
- **Open Food Facts** — when you scan a product barcode (Pro feature), the App sends the barcode number to [Open Food Facts](https://world.openfoodfacts.org) to look up the product name and category. Only the barcode is sent; no personal data or device identifiers. See [Open Food Facts' privacy policy](https://world.openfoodfacts.org/privacy).
- **Expo and React Native** — the frameworks the App is built with. The App does not send your data to Expo while you use it.

Apple or Google may process store, purchase, update and diagnostic information under their own terms and privacy policies when you download or use an App Store or Google Play build. This is separate from the data described above.

## Notifications

Expiry reminders are optional local notifications scheduled on your device. The App asks for notification permission only when you enable reminders. A reminder can show the name of a food item, which may be visible on your lock screen. Expire does not use remote push notifications.

## Analytics, Advertising and Tracking

Expire does not include analytics, advertising, tracking or crash-reporting services. It does not use advertising identifiers and does not track you across apps or websites.

## Retention and Deletion

Your data is kept until you delete it:

- **Delete All Items** in Settings removes every item in your list, or in the shared list if you are in a household.
- **Leave Household** removes you from the household; the shared list stays with the remaining members.
- Deleting the App removes the local data and your anonymous credentials. Data left in the cloud under that identifier is unreachable from the App. To have it removed from our servers, contact us using the details below.

## Children's Privacy

Expire does not knowingly collect any personal information from children under 13.

## This Policy Website

This page is hosted by Cloudflare Pages and loads styles, icons and scripts from jsDelivr. When you visit it, Cloudflare and jsDelivr may receive standard web request information such as your IP address, browser details and the requested page. Their handling of that information is governed by their own privacy policies. The site stores your light or dark theme preference in your browser's local storage and does not use web analytics.

## Changes to This Policy

We may update this Privacy Policy when the App's behaviour, dependencies or legal requirements change. Changes will be reflected on this page with an updated "Last updated" date.

## Contact Us

If you have questions about this Privacy Policy, or want data removed from our servers, please contact us via [ltrbx.io/flurdy.com](https://ltrbx.io/flurdy.com). The contact form is provided by Ltrbx and receives the name, email address and message you choose to submit.
