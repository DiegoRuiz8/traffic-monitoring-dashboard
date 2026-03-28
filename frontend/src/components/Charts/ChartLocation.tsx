import React from 'react';

const ChartLocation: React.FC = () => {
  return (
    <div className="col-span-12 rounded-lg bg-white shadow-lg bg-white p-7.5 shadow-default dark:border-strokedark dark:bg-boxdark xl:col-span-4">
      <div className="mb-4">
        <h4 className="text-xl font-semibold text-black dark:text-white">
          Ubicación
        </h4>
      </div>
      <div className="relative">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.549388377894!2d-103.4144136851153!3d20.676277086205733!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8428b1bcb02c3b7d%3A0x9bbdb8c9932c9b0!2sAuditorio%20Telmex!5e0!3m2!1sen!2smx!4v1698589012345!5m2!1sen!2smx"
          width="100%"
          height="300"
          style={{ border: 0 }}
          allowFullScreen
          loading="lazy"
          referrerPolicy="no-referrer-when-downgrade"
          className="rounded-md"
        ></iframe>
      </div>
    </div>
  );
};

export default ChartLocation;
