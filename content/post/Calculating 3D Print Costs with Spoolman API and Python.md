---
author: "Marcus Vechiato"
title: "Calculating 3D Print Costs with Spoolman API and Python"
date: "2025-01-10"
publish: true
thumbnail: "/obsidian/3dp_thumb.jpeg"
tags:
  - 3d printing
  - python
--- 

As a 3D printing enthusiast, I've often grappled with accurately calculating the cost of my prints. While slicers provide estimates of filament usage, they don't account for the actual cost of the filament used, especially when dealing with multiple spools or varying filament prices. To solve this, I developed a Python script that calculates the real cost of a 3D print by leveraging the Spoolman API.
In this blog post, I'll walk you through the motivation behind the project, the features of the script, and how you can use it to accurately estimate your 3D printing costs.

---
## **The Challenge**

Estimating the cost of a 3D print isn't straightforward when:

- **Multiple Spools Are Used**: Prints may require filament from different spools, each with different prices, materials, or remaining quantities.
- **Varying Filament Prices**: The cost per gram can vary significantly between filament types and vendors.
- **Slicer Limitations**: While slicers provide filament usage estimates, they don't integrate actual spool data or costs.

This led me to create a solution that considers the actual filament used from specific spools, providing a more accurate cost calculation.

---
## **Introducing the Filament Cost Calculator**

The **Filament Cost Calculator** is a Python script that:

- **Fetches Spool Data**: Retrieves information about your spools from the Spoolman API, excluding any archived spools.
- **Calculates Costs for Multiple Spools**: Allows you to input filament usage for multiple spools, summing up the total cost.
- **Flexible Unit Input**: Accepts filament usage in grams or meters, with units specified directly in the input (e.g., `100g`, `50m`).
- **Provides a Summary Report**: Displays a formatted summary of all filaments used and their individual costs at the end.

You can find the script on GitHub: [Spoolman Multi-Spool Cost Calculator](https://github.com/vechiato/spoolman-multi-spool-cost-calculator)

---
## **How It Works**

### **1. Fetching Spool Data**

The script connects to the Spoolman API to retrieve information about your spools:

- **Excludes Archived Spools**: Only active spools are displayed for selection.
- **Displays Spool Details**: Shows the spool name, price, material, color, and other relevant information.

### **2. User Input**

- **Spool Selection**: You select the spools used in your print by entering the corresponding numbers.
- **Filament Usage**: Enter the amount of filament used for each spool, directly specifying the unit (`g` for grams or `m` for meters). If you omit the unit, the script assumes grams.

### **3. Cost Calculation**

- **Mass per Meter Calculation**: For inputs in meters, the script calculates the mass per meter using the filament's diameter and density.
- **Cost per Gram**: Calculates the cost per gram based on the spool's price and initial filament weight.
- **Total Cost**: Multiplies the filament used by the cost per gram to determine the cost for each spool, summing up the total.

### **4. Summary Report**

At the end, the script provides a summary table:

- **Spool Name**
- **Filament Used**
- **Unit (g or m)**
- **Cost**

---
## **Setting Up the Script**

### **Prerequisites**

- **Python 3.6 or higher**
- **Required Libraries**: Install the necessary Python packages using:

  ```bash
  pip install requests python-dotenv
  ```

### **Configuration**

1. **Clone the Repository**

   ```bash
   git clone https://github.com/vechiato/spoolman-multi-spool-cost-calculator.git
   cd spoolman-multi-spool-cost-calculator
   ```

2. **Set Up Environment Variables**

   Create a `.env` file in the project directory:

   ```ini
   # Spoolman API URL (default is http://localhost:9712/api/v1 if not set)
   SPOOLMAN_API_URL=http://your-spoolman-host:port/api/v1

   # Spoolman API Key (if required)
   SPOOLMAN_API_KEY=your_api_key_here
   ```

   - Replace `http://your-spoolman-host:port/api/v1` with your Spoolman API URL.
   - If you don't set `SPOOLMAN_API_URL`, the script defaults to `http://localhost:9712/api/v1`.

---

## **Using the Script**

Run the script using Python:

```bash
python calculate_filament_cost.py
```

**Step-by-Step Guide:**

1. **Select Spools**

   The script lists available spools:

   ```
   Available Spools:
	1. PLA Red (ID: 1) Price: $16.49 Material: PLA Color: ff0000
	2. PLA White (ID: 2) Price: $10.99 Material: PLA Color: ffffff
	3. NYLON GREY (ID: 3) Price: $28.99 Material: NYLON Color: 808080
	4. PETG BLACK (ID: 4) Price: $15.99 Material: PETG Color: 000000
   ```

   Enter the number corresponding to the spool you wish to use.

2. **Enter Filament Usage**

   When prompted, enter the amount of filament used with the unit:

   ```
   Enter filament used for the print (e.g., '100g' or '1.5m'): 100.34g
   ```

3. **Add Additional Spools**

   After each spool, you can choose to add another:

   ```
   Do you want to add another spool? (y/n): y
   ```

4. **View the Summary Report**

   Once done, the script displays a summary:

   ```
	Summary of Filament Usage:
	Spool Name                             Filament Used        Unit    Cost
	---------------------------------------------------------------------------
	PLA Red                                    100.34             g      1.65
	PLA White                                   53.21             m      1.74
	---------------------------------------------------------------------------
	Total Cost:                                                          3.40
   ```

## Example Output

```
Available Spools:
1. PLA Red (ID: 1) Price: $16.49 Material: PLA Color: ff0000
2. PLA White (ID: 2) Price: $10.99 Material: PLA Color: ffffff
3. NYLON GREY (ID: 3) Price: $28.99 Material: NYLON Color: 808080
4. PETG BLACK (ID: 4) Price: $15.99 Material: PETG Color: 000000
...

Select a spool by number: 1

Selected Spool: PLA Red
Spool Cost: $16.49
Remaining Filament Weight: 912.13 grams
Material: PLA, Diameter: 1.75 mm, Density: 1.24 g/cm³

Enter filament used for the print (e.g., '100g' or '1.5m'): 100.34g

Cost for this spool: $1.65

Do you want to add another spool? (y/n): y

Select a spool by number: 2

Selected Spool: PLA White
Spool Cost: $10.99
Remaining Filament Weight: 440.00 grams
Material: PLA, Diameter: 1.75 mm, Density: 1.24 g/cm³

Enter filament used for the print (e.g., '100g' or '1.5m'): 53.21m

Cost for this spool: $1.74

Do you want to add another spool? (y/n): n

Summary of Filament Usage:
Spool Name                             Filament Used        Unit    Cost
---------------------------------------------------------------------------
PLA Red                                    100.34             g      1.65
PLA White                                   53.21             m      1.74
---------------------------------------------------------------------------
Total Cost:                                                          3.40
```

---
## **Benefits of This Approach**

- **Accurate Cost Estimation**: By considering actual spool prices and filament used, you get precise cost calculations.
- **Handles Multiple Spools**: Ideal for prints that require different filaments or when spools have varying remaining quantities.
- **User-Friendly**: The script provides clear prompts and handles inputs flexibly.
- **Customizable**: You can modify the script to suit your needs, such as integrating with your slicer's output or adjusting for different currencies.

---
## **Future Enhancements**

- **Integration with Slicers**: Automating the extraction of filament usage directly from slicer output files.
- **Graphical User Interface**: Developing a GUI for easier interaction.
- **Exporting Reports**: Adding functionality to export the summary as a CSV or PDF for record-keeping.

---
## **Conclusion**

Accurately calculating the cost of your 3D prints is essential, whether for personal budgeting, quoting clients, or managing resources. By leveraging the Spoolman API and this Python script, you can gain better insights into your printing costs and make informed decisions.

**Check out the project on GitHub:** [Spoolman Multi-Spool Cost Calculator](https://github.com/vechiato/spoolman-multi-spool-cost-calculator)

I hope you find this tool as useful as I have. Feel free to contribute to the project or suggest enhancements!

---
## **Acknowledgements**


- **Spoolman API**: This script utilizes the Spoolman API for fetching spool data. [Spoolman API Documentation](https://donkie.github.io/Spoolman/)

- **Contributors**: Thanks to everyone who has contributed to this project.

---

**Happy printing!**