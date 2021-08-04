import React, { useState } from 'react';

export default function index(props) {
  return (
    <>
      <h1>Solutions</h1>
      <div className="table-responsive">
        <table className="table table-striped table-dark">
          <thead>
            <tr>
              <th>number</th>
              <th>title</th>
              <th colSpan="3"></th>
            </tr>
          </thead>

          <tbody>
            {props.solutions.map((solution) => {
              return(
                <tr key={solution.id}>
                  <td> {solution.number} </td>
                  <td> {solution.title} </td>
                  <td> <a href={Routes.solution_path(solution)}>Exibir</a></td>
                  <td> <a href={Routes.edit_solution_path(solution)}>Editar</a></td>
                </tr>
              )
            })}
          </tbody>
        </table>
      </div>
    </>
  );
}

