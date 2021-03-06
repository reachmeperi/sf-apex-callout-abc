//Generated by wsdl2apex

public class GetWeather {
    public class GetCitiesByCountryResponse_element {
        public String GetCitiesByCountryResult;
        private String[] GetCitiesByCountryResult_type_info = new String[]{'GetCitiesByCountryResult','http://www.webserviceX.NET',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webserviceX.NET','true','false'};
        private String[] field_order_type_info = new String[]{'GetCitiesByCountryResult'};
    }
    public class GetCitiesByCountry_element {
        public String CountryName;
        private String[] CountryName_type_info = new String[]{'CountryName','http://www.webserviceX.NET',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webserviceX.NET','true','false'};
        private String[] field_order_type_info = new String[]{'CountryName'};
    }
    public class GetWeatherResponse_element {
        public String GetWeatherResult;
        private String[] GetWeatherResult_type_info = new String[]{'GetWeatherResult','http://www.webserviceX.NET',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webserviceX.NET','true','false'};
        private String[] field_order_type_info = new String[]{'GetWeatherResult'};
    }
    public class GetWeather_element {
        public String CityName;
        public String CountryName;
        private String[] CityName_type_info = new String[]{'CityName','http://www.webserviceX.NET',null,'0','1','false'};
        private String[] CountryName_type_info = new String[]{'CountryName','http://www.webserviceX.NET',null,'0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://www.webserviceX.NET','true','false'};
        private String[] field_order_type_info = new String[]{'CityName','CountryName'};
    }
    public class GlobalWeatherSoap {
        public String endpoint_x = 'http://www.webservicex.com/globalweather.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://www.webserviceX.NET', 'GetWeather'};
        public String GetCitiesByCountry(String CountryName) {
            GetWeather.GetCitiesByCountry_element request_x = new GetWeather.GetCitiesByCountry_element();
            request_x.CountryName = CountryName;
            GetWeather.GetCitiesByCountryResponse_element response_x;
            Map<String, GetWeather.GetCitiesByCountryResponse_element> response_map_x = new Map<String, GetWeather.GetCitiesByCountryResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetCitiesByCountry',
              'http://www.webserviceX.NET',
              'GetCitiesByCountry',
              'http://www.webserviceX.NET',
              'GetCitiesByCountryResponse',
              'GetWeather.GetCitiesByCountryResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetCitiesByCountryResult;
        }
        public String GetWeather(String CityName,String CountryName) {
            GetWeather.GetWeather_element request_x = new GetWeather.GetWeather_element();
            request_x.CityName = CityName;
            request_x.CountryName = CountryName;
            GetWeather.GetWeatherResponse_element response_x;
            Map<String, GetWeather.GetWeatherResponse_element> response_map_x = new Map<String, GetWeather.GetWeatherResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://www.webserviceX.NET/GetWeather',
              'http://www.webserviceX.NET',
              'GetWeather',
              'http://www.webserviceX.NET',
              'GetWeatherResponse',
              'GetWeather.GetWeatherResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.GetWeatherResult;
        }
    }
}