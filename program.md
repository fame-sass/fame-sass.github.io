---
layout: page
title: Program
permalink: /program/
sections:
 - lecture: Lectures
 - practical: Practical Hands-on Sessions
 - tool: Tool & Industry Presentations
---

The program consists of lectures and practical sessions by renowned speakers on the following topics.

# Overview
Note that the program is subject to minor changes in case of scheduling or speaker availability problems.

<table class="program">
<tr>
  <th></th>
  <th>Thursday</th>
  <th>Friday</th>
  <th>Saturday</th>
</tr>
<tr>
  <td>08:30 - 09:00</td>
  <td>Welcome</td>
  <td></td>
  <td></td>
</tr>
<tr>
<td>09:00 - 10:30</td>
<td><a href="#MDE-Foundations">MDE Foundations</a></td>
<td><a href="#Model-Transformation">Model Transformation and Management</a></td>
<td><a href="#Model-Evolution">Model Evolution and Co-evolution</a></td>
</tr>
  
<tr>
<td>10:30 - 11:00</td>
<td colspan="3"><b>Coffee Break</b></td>
</tr>
  
<tr>
<td>11:00 - 12:30</td>
<td><a href="#Engineering-Modeling-Languages">Engineering Modeling Languages</a></td>
<td><a href="#Model-Based-Variability-Management">Model-Based Variability Management</a></td>
<td><a href="#Models-At-Runtime">Models at Runtime and Self-Adaptive Systems</a></td>
</tr>
<tr>
<td>12:30 - 13:30</td>
<td colspan="3"><b>Lunch Break</b></td>
</tr>
<tr>
<td rowspan="2">13:30 - 15:30</td>
<td><a href="#Scientific-Methods">Scientific methods</a></td>
<td rowspan="2"><a href="#MDE-Hands-On">MDE Hands-On</a></td>
<td><a href="#Engineering-Digital-Twins">Engineering Digital Twins</a></td>
</tr>
<tr>
<td><a href="#Create-Your-Career-Path">Create Your Own Career Path</a></td>
<td><a href="#Foundations-And-Applications-Of-AI-and-MDE">Foundations and Applications of AI and MDE</a></td>
</tr>
<tr>
<td>15:30 - 16:00</td>
<td colspan="3"><b>Coffee Break</b></td>
</tr>
<tr>
<td rowspan="2">16:00 - 18:00</td>
<td>Student Presentations</td>
<td>Student Presentations</td>
<td rowspan="2">Student Presentations / Tool Presentations</td>
</tr>
<tr>
<td><a href="#Developing-Next-Generation-Modeling-Tools">Developing Next Generation Modeling Tools with Open-Source Technologies</a></td>
<td><a href="#Netgrif">Netgrif - Industrial Tool Presentation</a></td>
</tr>
<tr>
<td>Evening</td>
<td></td>
<td><b>Social Event</b></td>
<td></td>
</tr>
</table>


# Sessions Details
{% for section in page.sections %}{% for sec in section %}
<h2 style="text-decoration:underline;"> {{sec[1]}} </h2>

{% assign posts = site.posts | sort: 'order' %}

{% for post in posts %}{% if post.sessiontype == sec[0] %}
  <h3 id="{{ post.permalink }}">{{ post.title }}</h3>
  <p>(by {{post.speaker}})</p>
  
  <div style="display:flex;align-items:center; justify-content: center;">
  {% if post.picture %}
  <img src="{{post.picture}}" style="height:150px;" alt="{{post.speaker}}" />
  {% endif %}
  <div style="padding:15px;width:100%;">
   {{ post.content }}
  </div>
  </div>
{% endif %}{% endfor %}
{% endfor %}{% endfor %} 




