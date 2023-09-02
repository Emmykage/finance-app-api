# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# 
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(first_name: "Jonathan", last_name: "Dough", email:"jon-doe@gmail.com", password: "chemistry")

assets = Asset.create([{

    user_id: 1,
    asset_type: "Real Estate",
    title: "Supply Chain Financing I.Z",
    description: "Generate income via a global conglomerate's financin facility",
    minimum_investment: 10,
    term: "6",
    payment_schedule: "event based",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_mangt_fee: 3,
    annual_flat_expense: 10,
},
{

    user_id: 1,
    asset_type: "Art",
    title: "Consumer Health & Wellness Financing I",
    description: "Invest in a financincing facility expected to consist of 4,500+ consumer loans",
    minimum_investment: 10,
    term: "36",
    payment_schedule: "yearly",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_mangt_fee: 3,
    annual_flat_expense: 10,
},
{

    user_id: 1,
    asset_type: "Crypto",
    title: "Chelsea Multi-Family Equity",
    description: "Equity ownership in a three-property multi-family portfolio in Chelsea, NYC.",
    minimum_investment: 10,
    term: "6",
    payment_schedule: "event based",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_mangt_fee: 3,
    annual_flat_expense: 10,
},
{

    user_id: 1,
    asset_type: "Real Estate",
    title: "Diversified Art Debt Portfolio II",
    description: "Access a portfolio of art-backed loans that has never missed a monthly payment.",
    minimum_investment: 10,
    term: "12",
    payment_schedule: "monthly",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_mangt_fee: 3,
    annual_flat_expense: 10,
},{

    user_id: 1,
    asset_type: "Real Estate",
    title: "Norfolk Industrial Complex Equity II",
    description: "Invest in three industrial buildings located in Norfolk Commerce Park, a highly ...",
    minimum_investment: 15,
    term: "40",
    payment_schedule: "quarterly",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_mangt_fee: 3,
    annual_flat_expense: 10,
},
{

    user_id: 1,
    annual_mangt_fee: 3,
    asset_type: "Art",
    title: "Portland Multi-Family Financing",
    description: "A loan backed by an under construction multi-family property.",
    minimum_investment: 5,
    term: "26",
    payment_schedule: "monthly",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_flat_expense: 10,
},
{

    user_id: 1,
    annual_mangt_fee: 3,
    asset_type: "Transportation",
    title: "Growth & Income REIT",
    description: "Gain exposure to multiple commercial real estate properties in one investment.",
    minimum_investment: 5,
    term: "4",
    payment_schedule: "quarterly",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_flat_expense: 10,
},
{

    user_id: 1,
    annual_mangt_fee: 3,
    asset_type: "Crypto",
    title: "Yieldstreet Prism Fund",
    description: "Enhance the income of your portfolio with a diversified private markets fund. & Income REIT",
    minimum_investment: 5,
    term: "4",
    payment_schedule: "quarterly",
    overview_description: "Park45 is a class: A multi-family complex located north of huston. the Sponsor is making minor upgrades to drive an expected 28% per-unit increase from the purchase price at time of sale in the second half of 2025.",
    overview_note: "provent business plan: Since the sponsor acquired the property in March 2022, it has achieved a 13% organic increase in effective rent -- prior to the completion of any unit renovations. Rents are expected to continue to increase as unit renovations commence. Stabilised property: The property is 94% occupied and generating stable cash flows from rent income. Interest rate protection: The property is financed with a fixed rate loan at 3.35% through March 2025. MArket rates today are approximately double so this low capital continues to embrace the investment in the current interest rate environment",
    share_in_excess: 3,
    annual_flat_expense: 10,

}
],)