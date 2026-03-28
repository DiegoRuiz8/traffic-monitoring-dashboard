import React from 'react';
import ChartCamera from '../components/Charts/ChartCamera';
import ChartTwo from '../components/Charts/ChartTwo';
import ChartLocation from '../components/Charts/ChartLocation';
import ChartWeather from '../components/Charts/ChartWeather';
import CardDataStats from '@/components/CardDataStats';
import CarIcon from '@/images/icon/icon-car.svg';
import BusIcon from '@/images/icon/icon-bus.svg';
import TruckIcon from '@/images/icon/icon-truck.svg';
import MotorcycleIcon from '@/images/icon/icon-motorcycle.svg';
import ChartHourlyTrafficFlow from '@/components/Charts/ChartHourlyTrafficFlow';
import ChartPeakTraffic from '@/components/Charts/ChartPeakTraffic';
import ChartTrafficVolume from '@/components/Charts/ChartTrafficVolume';
import ChartVehicleDistribution from '@/components/Charts/ChartVehicleDistribution';

const Dashboard: React.FC = () => {
  return (
    <>
      <div className="flex items-center justify-start mb-4">
        <h4 className="text-xl font-semibold mr-3 text-black dark:text-white">
          Cambiar Cámara
        </h4>
        <select className="rounded px-2 py-1 text-sm text-gray-700 dark:bg-boxdark dark:text-white dark:border-strokedark">
          <option>Cámara 1</option>
          <option>Cámara 2</option>
          <option>Cámara 3</option>
        </select>
      </div>
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-8 text-black dark:text-white ">
        <CardDataStats title="Autos" total="29" rate="+5% desde ayer" levelUp>
          <img src={CarIcon} alt="Icono de Autos" className="h-6 w-6" />
        </CardDataStats>

        <CardDataStats
          title="Transporte Público"
          total="53"
          rate="+3% desde la semana pasada"
          levelUp
        >
          <img
            src={BusIcon}
            alt="Icono de trasnporte Público"
            className="h-6 w-6"
          />
        </CardDataStats>

        <CardDataStats
          title="Transporte de Carga"
          total="27"
          rate="-2% desde el último trimestre"
          levelDown
        >
          <img
            src={TruckIcon}
            alt="Icono de Trasnporte de Carga"
            className="h-6 w-6"
          />
        </CardDataStats>

        <CardDataStats
          title="Motocicletas"
          total="43"
          rate="+5% desde el último mes"
          levelUp
        >
          <img
            src={MotorcycleIcon}
            alt="Icono de Motocicleta"
            className="h-6 w-6"
          />
        </CardDataStats>
      </div>
      <div className="mt-4 grid grid-cols-12 gap-4 md:mt-6 md:gap-6 2xl:mt-7.5 2xl:gap-7.5">
        <ChartCamera />
        <ChartLocation />
        <ChartHourlyTrafficFlow />
        <ChartWeather />
        <ChartPeakTraffic />
        <ChartTrafficVolume />
        <ChartVehicleDistribution />
      </div>
    </>
  );
};

export default Dashboard;
