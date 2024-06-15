import React, { useState } from 'react';
import ReactMarkdown from 'react-markdown';

const MarkdownEditor = () => {
    const [markdown, setMarkdown] = useState('type markdown here');

    const handleMarkdownChange = (event) => {
        setMarkdown(event.target.value);
    };

    return (
        <div>
            <textarea value={markdown} onChange={handleMarkdownChange} />
            <ReactMarkdown>{markdown}</ReactMarkdown>
        </div>
    );
};

export default MarkdownEditor;

const data = [
    { id: 1, name: 'John' },
    { id: 2, name: 'Jane' },
    { id: 3, name: 'Bob' },
];

const NameList = () => {
    return (
        <ul>
            {data.map((item) => (
                <li key={item.id}>{item.name}</li>
            ))}
        </ul>
        const names = data.map((item) => item.name);
        console.log(names); // Output: ['John', 'Jane', 'Bob']
    );
};

