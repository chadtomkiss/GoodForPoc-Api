module.exports = {
    locations: [
        { id: 1, address: '117 Adams St', city: 'New York', state: 'Brooklyn', country: 'USA', latitude: 40.700582, longitude: -73.988146, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')}
    ],
    companies: [
        { id: 1, name: 'Etsy', slug: 'etsy', description: 'Etsy operates marketplaces where millions of people around the world connect, both online and offline, to make, sell and buy unique goods.', website_uri: 'https://etsy.com', careers_uri: 'https://www.etsy.com/uk/careers', rating: 4.6, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')}
    ],
    company_locations: [
        { id: 1, company_id: 1, location_id: 1}
    ],
    benefits: [
        { id: 1, name: 'Remote Working'}
    ],
    benefits_companies: [
        { id: 1, benefit_id: 1, company_id: 1}
    ],
    question_pages: [
      { id: 1, title: "Part 1: About You", page: 1},
      { id: 2, title: "Part 2: Company Info", page: 2}
    ],
    questions: [
        { id: 1, name: 'ethnicity', template: 'checkbox', title: 'Race / Ethnicity', help_text: 'Your racial or ethnic identity (optional – select multiple if multiracial)', question_page_id: 1, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 2, name: 'department', template: 'radio', title: 'Department', help_text: 'Your position at the company you are submitting (optional)', question_page_id: 1, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 3, name: 'length-of-employment', template: 'radio', title: 'Length of Employment', help_text: 'How long you\'ve worked at this company (optional)', question_page_id: 1, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 4, name: 'company-name', template: 'textbox', title: 'Company Name', question_page_id: 2, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 5, name: 'company-website', template: 'textbox', title: 'Company Website', question_page_id: 2, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 6, name: 'sectors', template: 'checkbox', title: 'Categories', question_page_id: 2, created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')}
    ],
    question_options: [
        { id: 5, question_id: 1, option: 'Asian (East Asian, Southeast Asian, Indian, etc.)', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 6, question_id: 1, option: 'Black (Black African, Black American, etc.)', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 7, question_id: 1, option: 'Latino/Hispanic', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 1, question_id: 2, option: 'Administration', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 2, question_id: 2, option: 'Customer Care / Support', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 3, question_id: 2, option: 'Design', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 4, question_id: 2, option: 'Engineering', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 5, question_id: 3, option: '0-11 months', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 6, question_id: 3, option: '1-2 years', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 7, question_id: 3, option: '3-4 years', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 8, question_id: 3, option: '5+ years', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 9, question_id: 6, option: 'Software', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 10, question_id: 6, option: 'Health', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')},
        { id: 11, question_id: 6, option: 'Education', created_at: new Date('2017-09-25'), updated_at: new Date('2017-09-25')}
    ]
}
