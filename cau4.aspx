﻿<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Information Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
        }
        
        .form-container {
            background-color: white;
            padding: 20px;
            width: 650px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        .section {
            margin-bottom: 30px;
        }
        
        .section-title {
            font-weight: bold;
            border-bottom: 1px solid #ccc;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }
        
        .form-row {
            display: flex;
            margin-bottom: 10px;
            align-items: center;
        }
        
        .form-label {
            width: 150px;
            font-weight: normal;
        }
        
        .form-input {
            flex-grow: 1;
        }
        
        input[type="text"], 
        input[type="email"],
        input[type="date"],
        input[type="tel"],
        select,
        textarea {
            width: 100%;
            padding: 5px;
            border: 1px solid #ccc;
        }
        
        .icon-button {
            background: none;
            border: none;
            cursor: pointer;
            margin-left: 5px;
        }
        
        .radio-group {
            display: flex;
            flex-direction: column;
        }
        
        .radio-option {
            margin-bottom: 5px;
            display: flex;
            align-items: center;
        }
        
        .checkbox-option {
            display: flex;
            align-items: center;
        }
        
        .editor-toolbar {
            display: flex;
            background-color: #f8f8f8;
            padding: 5px;
            border: 1px solid #ddd;
            border-bottom: none;
        }
        
        .toolbar-button {
            background: none;
            border: 1px solid #ddd;
            margin-right: 2px;
            padding: 2px 5px;
            cursor: pointer;
        }
        
        .toolbar-separator {
            width: 1px;
            background-color: #ddd;
            margin: 0 5px;
        }
        
        .editor-content {
            border: 1px solid #ddd;
            padding: 10px;
            min-height: 150px;
        }
        
        .captcha {
            margin-top: 10px;
            text-align: center;
        }
        
        .captcha-image {
            font-family: monospace;
            font-size: 24px;
            letter-spacing: 5px;
            color: #777;
            margin-bottom: 10px;
        }
        
        .form-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
            border-top: 1px solid #ccc;
            padding-top: 20px;
        }
        
        .required-note {
            font-size: 12px;
        }
        
        .form-buttons {
            display: flex;
        }
        
        .form-buttons button {
            padding: 8px 15px;
            margin-left: 10px;
            cursor: pointer;
        }
        
        .submit-btn {
            background-color: #444;
            color: white;
            border: none;
        }
        
        .cancel-btn {
            background-color: #444;
            color: white;
            border: none;
        }
        
        .input-with-icon {
            position: relative;
        }
        
        .input-icon {
            position: absolute;
            right: 8px;
            top: 50%;
            transform: translateY(-50%);
            color: #777;
        }
        
        .nav-buttons {
            display: flex;
        }
        
        .nav-btn {
            width: 24px;
            height: 24px;
            background-color: #444;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <!-- Basic Info Section -->
        <div class="section">
            <div class="section-title">Basic Info</div>
            
            <div class="form-row">
                <div class="form-label">Employee ID</div>
                <div class="form-input">9</div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Last Name</div>
                <div class="form-input">Dodsworth</div>
            </div>
            
            <div class="form-row">
                <div class="form-label">First Name</div>
                <div class="form-input">
                    <div class="input-with-icon">
                        <input type="text" value="Anne">
                        <span class="input-icon">🔍</span>
                    </div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Gender</div>
                <div class="form-input">
                    <div class="radio-group">
                        <div class="radio-option">
                            <input type="radio" name="gender" id="male">
                            <label for="male">Male</label>
                        </div>
                        <div class="radio-option">
                            <input type="radio" name="gender" id="female">
                            <label for="female">Female</label>
                        </div>
                        <div class="radio-option">
                            <input type="radio" name="gender" id="xxx">
                            <label for="xxx">XXX</label>
                        </div>
                        <div class="radio-option">
                            <input type="radio" name="gender" id="zzz" checked>
                            <label for="zzz">ZZZ</label>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Title</div>
                <div class="form-input">
                    <input type="text" value="Sales Representative">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Suffix</div>
                <div class="form-input">
                    <input type="text" value="Ms.">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">BirthDate</div>
                <div class="form-input">
                    <div class="input-with-icon">
                        <input type="text" value="1969-07-02 00:00:00">
                        <span class="input-icon">(?)</span>
                    </div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">HireDate</div>
                <div class="form-input">
                    <input type="text" value="1994-11-15 00:00:00">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">SSN # (if applicable)</div>
                <div class="form-input">
                    <div class="input-with-icon">
                        <input type="text">
                        <span class="input-icon">❓</span>
                    </div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Reports To</div>
                <div class="form-input">
                    <select>
                        <option selected>Buchanan</option>
                    </select>
                </div>
            </div>
        </div>
        
        <!-- Contact Info Section -->
        <div class="section">
            <div class="section-title">Contact Info</div>
            
            <div class="form-row">
                <div class="form-label">Email</div>
                <div class="form-input">
                    <input type="email" value="name@example.com">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Address</div>
                <div class="form-input">
                    <input type="text" value="7 Houndstooth Rd.">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">City</div>
                <div class="form-input">
                    <input type="text" value="London">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Region</div>
                <div class="form-input">
                    <input type="text">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Postal Code</div>
                <div class="form-input">
                    <input type="text" value="WG2 7LT">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Country</div>
                <div class="form-input">
                    <select>
                        <option selected>Russian Federation</option>
                    </select>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">US Home Phone</div>
                <div class="form-input">
                    <input type="tel" value="(234)234-2342">
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Photo</div>
                <div class="form-input">
                    <input type="text" value="EmpID9.bmp">
                </div>
            </div>
        </div>
        
        <!-- Optional Info Section -->
        <div class="section">
            <div class="section-title">Optional Info</div>
            
            <div class="form-row">
                <div class="form-label">Notes</div>
                <div class="form-input">
                    <div class="editor-toolbar">
                        <button class="toolbar-button">B</button>
                        <button class="toolbar-button">I</button>
                        <button class="toolbar-button">S</button>
                        <button class="toolbar-button">U</button>
                        <span class="toolbar-separator"></span>
                        <button class="toolbar-button">≡</button>
                        <button class="toolbar-button">≡</button>
                        <button class="toolbar-button">≡</button>
                        <span class="toolbar-separator"></span>
                        <button class="toolbar-button">⇛</button>
                        <button class="toolbar-button">⇚</button>
                        <span class="toolbar-separator"></span>
                        <button class="toolbar-button">x²</button>
                        <button class="toolbar-button">x'</button>
                        <span class="toolbar-separator"></span>
                        <button class="toolbar-button">🔗</button>
                        <button class="toolbar-button">≡</button>
                        <button class="toolbar-button">≡</button>
                        <button class="toolbar-button">≡</button>
                        <span class="toolbar-separator"></span>
                        <button class="toolbar-button">⌘</button>
                        <span class="toolbar-separator"></span>
                        <button class="toolbar-button">📷</button>
                        <button class="toolbar-button">🎬</button>
                        <button class="toolbar-button">📊</button>
                        <span class="toolbar-separator"></span>
                        <button class="toolbar-button">❌</button>
                    </div>
                    <div class="editor-content">
                        Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.ZZZ
                    </div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Preferred Shift</div>
                <div class="form-input">
                    <div class="radio-group">
                        <div class="radio-option">
                            <input type="radio" name="shift" id="regular">
                            <label for="regular">Regular</label>
                        </div>
                        <div class="radio-option">
                            <input type="radio" name="shift" id="gravy" checked>
                            <label for="gravy">Gravy Yard</label>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Active?</div>
                <div class="form-input">
                    <div class="checkbox-option">
                        <input type="checkbox" id="active" checked>
                        <label for="active"></label>
                    </div>
                </div>
            </div>
            
            <div class="form-row">
                <div class="form-label">Are you human?</div>
                <div class="form-input">
                    <div class="captcha">
                        <div class="captcha-image">TIDA₩O</div>
                        <div>Click to change</div>
                        <input type="text">
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Form Footer -->
        <div class="form-footer">
            <div class="nav-buttons">
                <div class="nav-btn">◄</div>
                <div class="nav-btn">►</div>
            </div>
            
            <div class="required-note">
                * required
            </div>
            
            <div class="form-buttons">
                <button class="submit-btn">Submit</button>
                <button class="cancel-btn">Cancel</button>
            </div>
        </div>
    </div>
</body>
</html>
