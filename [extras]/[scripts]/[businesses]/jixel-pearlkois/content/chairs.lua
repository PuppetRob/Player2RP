local QBCore = exports[Config.Core]:GetCoreObject()

local pearlseat = nil
local sitting = false
local Chairs = {}
local chairlist = {}

for _, Location in pairs(Config.Locations) do
	if Location.zoneEnabled and Location.chairsEnabled then
		if Location.MLO == "Gabz" then
			--CENTER
				chairlist[#chairlist+1] = { coords = vec4(-1833.65, -1195.55, 14.31, 240.0), stand = vec3(-1833.26, -1194.74, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1834.0, -1196.22, 14.31, 240.0), stand = vec3(-1833.26, -1194.74, 14.31) }
				chairlist[#chairlist+1] = {	coords = vec4(-1832.65, -1197.23, 14.31, 60.0), stand = vec3(-1832.09, -1195.54, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1832.17, -1196.44, 14.31, 60.0), stand = vec3(-1832.09, -1195.54, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1832.20, -1197.67, 14.31, 240.0), stand = vec3(-1831.22, -1195.88, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1831.73, -1196.85, 14.31, 240.0), stand = vec3(-1831.22, -1195.88, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.51, -1198.12, 14.31, 60.0), stand =  vec3(-1829.75, -1196.82, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.15, -1197.51, 14.31, 60.0), stand =  vec3(-1829.75, -1196.82, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1830.09, -1198.57, 14.31, 240.0), stand = vec3(-1828.9, -1196.95, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1829.74, -1197.95, 14.31, 240.0), stand = vec3(-1828.9, -1196.95, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1828.73, -1199.46, 14.31, 60.0), stand = vec3(-1828.21, -1197.8, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1828.33, -1198.7, 14.31, 60.0), stand = vec3(-1828.21, -1197.8, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1828.27, -1199.89, 14.31, 240.0), stand = vec3(-1826.87, -1198.69, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.83, -1199.14, 14.31, 240.0), stand = vec3(-1826.87, -1198.69, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1826.62, -1200.28, 14.31, 60.0), stand = vec3(-1826.87, -1198.69, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1826.20, -1199.68, 14.31, 60.0), stand = vec3(-1826.87, -1198.69, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1832.09, -1192.91, 14.31, 240.0), stand = vec3(-1831.71, -1194.12, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.96, -1192.67, 14.31, 150.0), stand = vec3(-1830.23, -1193.64, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1829.35, -1193.6, 14.31, 150.0), stand = vec3(-1830.23, -1193.64, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1828.73, -1194.78, 14.31, 60.0), stand = vec3(-1829.4, -1195.35, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1825.21, -1195.99, 14.31, 150.0), stand = vec3(-1826.24, -1196.05, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1824.76, -1197.09, 14.31, 60.0), stand = vec3(-1825.32, -1197.79, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1823.68, -1195.21, 14.31, 60.0), stand = vec3(-1823.42, -1194.29, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1824.92, -1195.37, 14.31, 330.0), stand = vec3(-1825.18, -1194.37, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1826.42, -1194.38, 14.31, 330.0), stand = vec3(-1825.18, -1194.37, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.07, -1193.32, 14.31, 240.0), stand = vec3(-1826.43, -1192.65, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1831.00, -1190.90, 14.31, 240.0), stand = vec3(-1830.5, -1190.24, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.44, -1192.20, 14.31, 330.0), stand = vec3(-1829.52, -1192.09, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1829.15, -1187.8, 14.31, 240.0), stand = vec3(-1829.88, -1188.95, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1829.46, -1188.36, 14.31, 240.0), stand = vec3(-1829.88, -1188.95, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.42, -1188.28, 14.31, 60.0), stand = vec3(-1828.66, -1189.81, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.81, -1188.97, 14.31, 60.0), stand = vec3(-1828.66, -1189.81, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1827.05, -1188.76, 14.31, 240.0), stand = vec3(-1827.83, -1190.13, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.29, -1189.44, 14.31, 240.0), stand = vec3(-1827.83, -1190.13, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1825.5, -1189.55, 14.31, 60.0), stand = vec3(-1826.44, -1190.83, 14.31) }
				chairlist[#chairlist+1] = {	coords = vec4(-1825.90, -1190.25, 14.31, 60.0), stand = vec3(-1826.44, -1190.83, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1825.05, -1189.86, 14.31, 240.0), stand = vec3(-1825.68, -1191.26, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1825.57, -1190.7, 14.31, 240.0), stand = vec3(-1825.68, -1191.26, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1823.47, -1190.42, 14.31, 60.0), stand = vec3(-1824.35, -1192.03, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1823.88, -1191.26, 14.31, 60.0), stand = vec3(-1824.35, -1192.03, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1823.20, -1191.02, 14.31, 240.0), stand = vec3(-1823.87, -1192.4, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1823.59, -1191.74, 14.31, 240.0), stand = vec3(-1823.87, -1192.4, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1821.67, -1191.82, 14.31, 60.0), stand = vec3(-1822.53, -1193.14, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1822.02, -1192.45, 14.31, 60.0), stand = vec3(-1822.53, -1193.14, 14.31) }

			-- barstools
				chairlist[#chairlist+1] = { coords = vec4(-1826.75, -1204.27, 14.65, 150.0), stand = vec3(-1826.56, -1203.89, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.82, -1203.6, 14.65, 150.0), stand = vec3(-1827.66, -1203.35, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1829.7, -1202.6, 14.65, 150.0), stand = vec3(-1829.48, -1202.33, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.80, -1201.9, 14.65, 150.0), stand = vec3(-1829.48, -1202.33, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1835.55, -1199.17, 14.65, 150.0), stand = vec3(-1835.26, -1198.71, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1836.69, -1198.49, 14.65, 150.0), stand = vec3(-1836.44, -1198.27, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1838.46, -1197.52, 14.65, 150.0), stand = vec3(-1838.34, -1197.18, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1831.23, -1182.51, 14.65, 330.0), stand = vec3(-1831.21, -1182.82, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.11, -1183.14, 14.65, 330.0), stand = vec3(-1830.3, -1183.35, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1828.4, -1184.2, 14.65, 330.0), stand = vec3(-1828.49, -1184.47, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.26, -1184.80, 14.65, 330.0), stand = vec3(-1827.39, -1185.1, 14.31) }

				chairlist[#chairlist+1] = { coords = vec4(-1822.40, -1187.60, 14.65, 330.0), stand = vec3(-1822.65, -1187.88, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1821.28, -1188.30, 14.65, 330.0), stand = vec3(-1821.58, -1188.5, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1819.55, -1189.29, 14.65, 330.0), stand = vec3(-1819.79, -1189.57, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1818.43, -1190.0, 14.65, 330.0), stand = vec3(-1818.63, -1190.2, 14.31) }

				--outside tables
				chairlist[#chairlist+1] = { coords = vec4(-1829.94, -1205.36, 14.3, 195.0), stand = vec3(-1830.32, -1204.89, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.77, -1206.89, 14.3, 290.0), stand = vec3(-1831.21, -1207.18, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1829.07, -1207.68, 14.3, 21.0), stand = vec3(-1829.85, -1207.89, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1828.36, -1206.13, 14.3, 108.0), stand = vec3(-1828.34, -1207.16, 14.3) }

				chairlist[#chairlist+1] = { coords = vec4(-1831.81, -1208.67, 14.3, 200.0), stand = vec3(-1831.96, -1208.23, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1832.62, -1210.24, 14.3, 290.0), stand = vec3(-1832.96, -1210.53, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.96, -1210.97, 14.3, 20.0), stand = vec3(-1831.68, -1211.25, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1830.21, -1209.47, 14.3, 110.0), stand = vec3(-1829.96, -1208.6, 14.3) }

				chairlist[#chairlist+1] = { coords = vec4(-1840.68, -1203.23, 14.3, 198.0), stand = vec3(-1841.07, -1202.67, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1841.46, -1204.81, 14.3, 290), stand = vec3(-1842.08, -1204.03, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1839.76, -1205.61, 14.3, 20.0), stand = vec3(-1839.6, -1206.26, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1839.03, -1204.07, 14.3, 110.0), stand = vec3(-1838.37, -1203.79, 14.3) }

				chairlist[#chairlist+1] = { coords = vec4(-1815.97, -1185.48, 14.3, 290.0), stand = vec3(-1816.43, -1185.69, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1814.29, -1186.28, 14.3, 20.0), stand = vec3(-1815.05, -1186.65, 14.31) }
				chairlist[#chairlist+1] = { coords = vec4(-1813.57, -1184.74, 14.31, 108.76), stand = vec3(-1816.15, -1183.69, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1815.16, -1183.9, 14.3, 197), stand = vec3(-1815.61, -1183.5, 14.3) }

				chairlist[#chairlist+1] = { coords = vec4(-1820.9, -1185.64, 14.3, 290.0), stand = vec3(-1821.31, -1185.73, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1819.24, -1186.44, 14.3, 20.0), stand = vec3(-1819.02, -1187.03, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1818.47, -1184.89, 14.3, 108.76), stand = vec3(-1818.0, -1184.68, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1820.09, -1184.07, 14.3, 200.0), stand = vec3(-1820.24, -1183.56, 14.3) }

				chairlist[#chairlist+1] = { coords = vec4(-1822.51, -1181.3, 14.3, 286), stand = vec3(-1822.93, -1181.52, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1820.95, -1182.02, 14.3, 20.0), stand = vec3(-1820.95, -1182.71, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1820.29, -1180.41, 14.3, 108.76), stand = vec3(-1819.62, -1180.59, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1821.73, -1179.6, 14.3, 200.0), stand = vec3(-1821.98, -1178.88, 14.3) }

				chairlist[#chairlist+1] = { coords = vec4(-1828.37, -1181.15, 14.3, 286.0), stand = vector3(-1828.96, -1181.29, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1826.73, -1182.1, 14.3, 16.0), stand = vec3(-1826.56, -1182.51, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1825.89, -1180.6, 14.3, 101.0), stand = vec3(-1825.41, -1180.36, 14.3) }
				chairlist[#chairlist+1] = { coords = vec4(-1827.42, -1179.65, 14.3, 192.0), stand = vec3(-1827.64, -1179.19, 14.3) }

				-- lounge
				chairlist[#chairlist+1] = { coords = vec4(-1820.12, -1202.45, 14.31, 60) }
				chairlist[#chairlist+1] = { coords = vec4(-1820.53, -1203.15, 14.31, 60) }
				chairlist[#chairlist+1] = { coords = vec4(-1822.25, -1203.99, 14.31, 330) }
				chairlist[#chairlist+1] = { coords = vec4(-1823.04, -1203.54, 14.31, 330) }


		elseif Location.MLO == "dons" then
			chairlist[#chairlist+1] = { coords = vec4(-1822.96, -1197.65, 14.35, 60.0), stand = vec3(-1822.34, -1197.75, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1823.39, -1198.45, 14.31, 60.0), stand = vec3(-1822.34, -1197.75, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1824.19, -1196.86, 14.31, 240.0), stand = vec3(-1826.1, -1197.74, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1824.72, -1197.61, 14.31, 240.0), stand = vec3(-1826.1, -1197.74, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1825.46, -1196.14, 14.31, 60.0), stand = vec3(-1826.27, -1197.55, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1825.87, -1196.94, 14.31, 60.0), stand = vec3(-1826.27, -1197.55, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1827.2, -1196.11, 14.31, 240.0), stand = vec3(-1827.63, -1196.61, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1826.77, -1195.38, 14.31, 240.0), stand = vec3(-1827.63, -1196.61, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1830.23, -1193.3, 14.31, 60.0), stand = vec3(-1831.91, -1194.26, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1830.69, -1194.11, 14.31, 60.0), stand = vec3(-1831.91, -1194.26, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1831.71, -1192.48, 14.31, 240.0), stand = vec3(-1831.91, -1194.26, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1832.15, -1193.21, 14.31, 240.0), stand = vec3(-1831.91, -1194.26, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1832.58, -1191.84, 14.31, 60.0), stand = vec3(-1834.12, -1192.91, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1833.07, -1192.67, 14.31, 60.0), stand = vec3(-1834.12, -1192.91, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1834.02, -1191.09, 14.31, 240.0), stand = vec3(-1834.12, -1192.91, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1834.44, -1191.85, 14.31, 240.0), stand = vec3(-1834.12, -1192.91, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1832.2, -1187.85, 14.31, 60.0), stand = vec3(-1830.63, -1186.89, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1831.77, -1187.11, 14.31, 60.0), stand = vec3(-1830.63, -1186.89, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1830.76, -1188.63, 14.31, 240.0), stand = vec3(-1830.63, -1186.89, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1830.31, -1187.85, 14.31, 240.0), stand = vec3(-1830.63, -1186.89, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1829.39, -1188.45, 14.3, 240.0), stand = vec3(-1828.49, -1188.17, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1829.89, -1189.25, 14.31, 240.0), stand = vec3(-1828.49, -1188.17, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1828.51, -1190.16, 14.31, 60.0), stand = vec3(-1828.49, -1188.17, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1827.98, -1189.28, 14.31, 60.0), stand = vec3(-1828.49, -1188.17, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1823.47, -1192.98, 14.31, 240.0), stand = vec3(-1821.87, -1191.76, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1822.96, -1192.19, 14.31, 240.0), stand = vec3(-1821.87, -1191.76, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1821.99, -1193.81, 14.31, 60.0), stand = vec3(-1821.87, -1191.76, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1821.54, -1192.99, 14.31, 60.0), stand = vec3(-1821.87, -1191.76, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1828.06, -1184.03, 14.31, 240.0), stand = vec3(-1827.93, -1185.97, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1828.49, -1184.75, 14.31, 240.0), stand = vec3(-1827.93, -1185.97, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1826.61, -1184.79, 14.31, 60.0), stand = vec3(-1827.93, -1185.97, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1827.05, -1185.58, 14.31, 60.0), stand = vec3(-1827.93, -1185.97, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1825.57, -1185.41, 14.31, 240.0), stand = vec3(-1825.81, -1187.39, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1826.01, -1186.18, 14.31, 240.0), stand = vec3(-1825.81, -1187.39, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1824.11, -1186.2, 14.31, 60.0), stand = vec3(-1825.81, -1187.39, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1824.61, -1187.03,  14.31, 60.0), stand = vec3(-1825.81, -1187.39, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1823.28, -1187.91, 14.31, 240.0), stand = vec3(-1825.81, -1187.39, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1823.52, -1187.85, 14.31, 240.0), stand = vec3(-1825.81, -1187.39, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1821.61, -1187.83, 14.31, 60.0), stand = vec3(-1825.81, -1187.39, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1822.11, -1188.66, 14.31, 60.0), stand = vec3(-1825.81, -1187.39, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1826.0, -1203.15, 14.31, 240.0), stand = vec3(-1820.84, -1190.28, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1825.51, -1202.39, 14.31, 240.0), stand = vec3(-1820.84, -1190.28, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1827.42, -1202.32,  14.31, 60.0), stand = vec3(-1820.84, -1190.28, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1826.97, -1201.52, 14.31, 60.0), stand = vec3(-1820.84, -1190.28, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1820.4, -1188.51, 14.31, 240.0), stand = vec3(-1820.84, -1190.28, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1820.88, -1189.27, 14.31, 240.0), stand = vec3(-1820.84, -1190.28, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1819.03, -1189.3, 14.31, 60.0), stand = vec3(-1820.84, -1190.28, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1819.49, -1190.14, 14.31, 60.0), stand = vec3(-1820.84, -1190.28, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1833.35, -1200.57, 14.25, 240.0), stand = vec3(-1832.53, -1200.69, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1832.99, -1199.94, 14.25, 240.0), stand = vec3(-1832.53, -1200.69, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1832.59, -1199.33, 14.25, 240.0), stand = vec3(-1832.53, -1200.69, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1829.72, -1200.85, 14.31, 60.0), stand = vec3(-1830.18, -1200.4, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1830.17, -1201.59, 14.31, 60.0), stand = vec3(-1830.54, -1201.24, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1830.6, -1202.21, 14.31, 60.0), stand = vec3(-1830.87, -1202.06, 14.33) }

			chairlist[#chairlist+1] = { coords = vec4(-1837.95, -1197.95, 14.25, 240.0), stand = vec3(-1837.26, -1197.89, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1837.61, -1197.26, 14.25, 240.0), stand = vec3(-1837.26, -1197.89, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1837.21, -1196.67,  14.25, 240.0), stand = vec3(-1837.26, -1197.89, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1835.21, -1199.42, 14.25, 60.0), stand = vec3(-1834.89, -1197.95, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1834.83, -1198.79, 14.25, 60.0), stand = vec3(-1835.29, -1198.44, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1834.44, -1198.17, 14.25, 60.0), stand = vec3(-1835.08, -1197.69, 14.31) }


			chairlist[#chairlist+1] = { coords = vec4(-1819.31, -1200.26, 14.51, 60.0), stand = vec3(-1819.75, -1200.0, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1818.87, -1199.4, 14.51, 60.0), stand = vec3(-1819.23, -1199.02, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1818.46, -1198.48, 14.51, 60.0), stand = vec3(-1819.01, -1198.31, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1820.45, -1202.18, 14.31, 60.0), stand = vec3(-1821.14, -1202.26, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1820.96, -1203.14, 14.31, 60.0), stand = vec3(-1821.14, -1202.26, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1821.46, -1203.9, 14.31, 60.0), stand = vec3(-1821.14, -1202.26, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1836.75, -1190.62, 14.51, 60.0), stand = vec3(-1836.04, -1190.54, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1836.31, -1189.79, 14.51, 60.0), stand = vec3(-1835.87, -1190.15, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1835.88, -1189.01, 14.51, 60.0), stand = vec3(-1835.36, -1189.16, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1835.46, -1188.23, 14.51, 60.0), stand = vec3(-1834.93, -1188.4, 14.31) }

			chairlist[#chairlist+1] = { coords = vec4(-1845.6, -1192.61, 14.31, 240.0), stand = vec3(-1845.32, -1192.93, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1846.93, -1194.83, 14.31, 240.0), stand = vec3(-1846.56, -1195.22, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1848.3, -1197.23, 14.31, 240.0), stand = vec3(-1847.74, -1197.51, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1846.3, -1198.31, 14.31, 60.0), stand = vec3(-1846.67, -1197.99, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1844.95, -1195.91, 14.31, 60.0), stand = vec3(-1845.31, -1195.7, 14.31) }
			chairlist[#chairlist+1] = { coords = vec4(-1843.69, -1193.71, 14.31, 60.0), stand = vec3(-1844.07, -1193.64, 14.31) }

		elseif Location.MLO == "koi" then
			chairlist[#chairlist+1] = { coords = vec4(-1067.09, -1477.21, -1.42, 150.0), stand = vec3(-1066.46, -1476.61, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1067.74, -1476.81, -1.42, 150.0), stand = vec3(-1066.46, -1476.61, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1068.61, -1476.3, -1.42, 150.0), stand = vec3(-1068.07, -1475.41, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1069.27, -1475.83, -1.42, 150.0), stand = vec3(-1068.07, -1475.41, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1067.93, -1478.43, -1.42, 330.0), stand = vec3(-1066.93, -1478.37, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1068.6, -1478.07, -1.42, 330.0), stand = vec3(-1066.93, -1478.37, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1069.31, -1477.6, -1.42, 330.0), stand = vec3(-1068.6, -1478.07, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1069.97, -1477.12, -1.42, 150.0), stand = vec3(-1066.46, -1476.61, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1074.67, -1472.25, -1.42, 300.0), stand = vec3(-1066.46, -1476.61, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1075.14, -1471.64, -1.42, 300.0), stand = vec3(-1066.46, -1476.61, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1075.57, -1470.9, -1.42, 300.0), stand = vec3(-1066.46, -1476.61, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1075.86, -1470.14, -1.42, 300.0), stand = vec3(-1066.46, -1476.61, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1073.21, -1471.54, -1.42, 120.0), stand = vec3(-1072.64, -1471.23, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1073.68, -1470.85, -1.42, 120.0), stand = vec3(-1072.94, -1470.44, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1074.14, -1470.05, -1.42, 120.0), stand = vec3(-1073.5, -1469.53, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1074.49, -1469.31, -1.42, 120.0), stand = vec3(-1073.44, -1469.23, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1077.65, -1461.59, -1.42, 343.0), stand = vec3(-1076.07, -1461.87, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1076.82, -1461.81, -1.42, 343.0), stand = vec3(-1075.78, -1462.04, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1077.28, -1460.27, -1.42, 163.0), stand = vec3(-1075.75, -1460.81, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1076.51, -1460.45, -1.42, 163.0), stand = vec3(-1075.75, -1460.81, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1077.13, -1459.41, -1.42, 343.0), stand = vec3(-1075.43, -1459.91, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1076.31, -1459.6, -1.42, 343.0), stand = vec3(-1075.43, -1459.91, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1076.86, -1458.05, -1.42, 163.0), stand = vec3(-1075.43, -1459.91, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1075.99, -1458.26, -1.42, 163.0), stand = vec3(-1075.43, -1459.91, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1076.6, -1457.12, -1.42, 343.0), stand = vec3(-1074.89, -1457.37, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1075.79, -1457.31, -1.42, 343.0), stand = vec3(-1074.86, -1457.3, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1076.33, -1455.86, -1.42, 163.0), stand = vec3(-1074.75, -1456.37, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1075.48, -1456.06, -1.42, 163.0), stand = vec3(-1074.75, -1456.37, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1053.25, -1446.15, -1.42, 240.0), stand = vec3(-1054.46, -1447.54, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1053.68, -1446.9, -1.42, 240.0), stand = vec3(-1054.46, -1447.54, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1052.18, -1446.75, -1.42, 60.0), stand = vec3(-1053.11, -1448.09, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1052.69, -1447.52, -1.42, 60.0), stand = vec3(-1053.11, -1448.09, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1051.35, -1447.31, -1.43, 240.0), stand = vec3(-1051.69, -1449.01, -1.43)}
			chairlist[#chairlist+1] = { coords = vec4(-1051.8, -1448.04, -1.43, 240.0), stand = vec3(-1051.69, -1449.01, -1.43)}
			chairlist[#chairlist+1] = { coords = vec4(-1050.28, -1447.96, -1.43, 60.0), stand = vec3(-1051.69, -1449.01, -1.43)}
			chairlist[#chairlist+1] = { coords = vec4(-1050.71, -1448.69, -1.43, 60.0), stand = vec3(-1051.69, -1449.01, -1.43)}

			chairlist[#chairlist+1] = { coords = vec4(-1049.42, -1448.46, -1.43, 240.0), stand = vec3(-1050.31, -1450.03, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1049.86, -1449.23, -1.43, 240.0), stand = vec3(-1050.31, -1450.03, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1048.34, -1449.13, -1.43, 60.0), stand = vec3(-1049.22, -1450.59, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1048.76, -1449.85, -1.43, 60.0), stand = vec3(-1049.22, -1450.59, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1045.89, -1451.56, -1.43, 209.0), stand = vec3(-1046.2, -1455.01, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1046.66, -1452.0, -1.43, 209.0), stand = vec3(-1046.2, -1455.01, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1045.26, -1452.74, -1.43, 29.0), stand = vec3(-1046.2, -1455.01, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1046.01, -1453.14, -1.43, 29.0), stand = vec3(-1046.2, -1455.01, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1044.77, -1453.63, -1.43, 209.0), stand = vec3(-1045.84, -1455.13, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1045.48, -1454.13, -1.43, 209.0), stand = vec3(-1045.84, -1455.13, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.97, -1454.59, -1.43, 29.0), stand = vec3(-1045.84, -1455.13, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1044.93, -1455.13, -1.43, 29.0), stand = vec3(-1045.84, -1455.13, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1043.74, -1455.55, -1.43, 209.0), stand = vec3(-1044.83, -1456.91, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1044.46, -1455.99, -1.43, 209.0), stand = vec3(-1044.83, -1456.91, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.06, -1456.73, -1.43, 29.0), stand = vec3(-1044.83, -1456.91, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.84, -1457.15, -1.43, 29.0), stand = vec3(-1044.83, -1456.91, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1042.24, -1460.05, -1.43, 176.0), stand = vec3(-1043.86, -1460.72, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.07, -1460.02, -1.43, 176.0), stand = vec3(-1043.86, -1460.72, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1042.25, -1461.4, -1.43, 356.0), stand = vec3(-1043.86, -1460.72, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.1, -1461.36, -1.42, 356.0), stand = vec3(-1043.86, -1460.72, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1043.09, -1462.29, -1.42, 176.0), stand = vec3(-1044.04, -1462.93, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1042.29, -1462.31, -1.42, 176.0), stand = vec3(-1044.04, -1462.93, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1042.28, -1463.62, -1.42, 356.0), stand = vec3(-1044.04, -1462.93, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.13, -1463.57, -1.42, 356.0), stand = vec3(-1044.04, -1462.93, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1042.28, -1464.61, -1.42, 176.0), stand = vec3(-1044.0, -1465.14, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.18, -1464.56, -1.42, 176.0), stand = vec3(-1044.0, -1465.14, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1042.28, -1465.8, -1.42, 356.0), stand = vec3(-1044.0, -1465.14, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1043.13, -1465.75, -1.42, 356.0), stand = vec3(-1044.0, -1465.14, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1043.28, -1469.19, -1.42, 150.0), stand = vec3(-1045.24, -1469.22, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1044.03, -1468.72, -1.42, 150.0), stand = vec3(-1045.24, -1469.22, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1044.0, -1470.3, -1.42, 330.0), stand = vec3(-1045.24, -1469.22, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1044.72, -1469.86, -1.42, 330.0), stand = vec3(-1045.24, -1469.22, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1044.43, -1471.15, -1.42, 150.0), stand = vec3(-1044.0, -1467.33, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1045.18, -1470.71, -1.42, 150.0), stand = vec3(-1044.0, -1467.33, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1045.12, -1472.25, -1.42, 330.0), stand = vec3(-1044.0, -1467.33, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1045.91, -1471.79, -1.42, 330.0), stand = vec3(-1044.0, -1467.33, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1045.65, -1473.06, -1.42, 150.0), stand = vec3(-1044.0, -1470.4, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1046.36, -1472.61, -1.42, 150.0), stand = vec3(-1044.0, -1470.4, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1047.06, -1473.71, -1.42, 330.0), stand = vec3(-1044.0, -1470.4, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1046.29, -1474.2, -1.42, 330.0), stand = vec3(-1044.0, -1470.4, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1053.62, -1479.34, -1.42, 105.0), stand = vec3(-1054.69, -1477.89, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1053.77, -1478.52, -1.42, 105.0), stand = vec3(-1054.69, -1477.89, -1.42)}
			chairlist[#chairlist+1] = {	coords = vec4(-1054.87, -1479.62, -1.42, 285.0), stand = vec3(-1054.69, -1477.89, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1055.08, -1478.75, -1.42, 285.0), stand = vec3(-1054.69, -1477.89, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1055.85, -1479.81, -1.42, 105.0), stand = vec3(-1056.98, -1478.34, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1056.03, -1478.94, -1.42, 105.0), stand = vec3(-1056.98, -1478.34, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1057.27, -1479.17, -1.42, 285.0), stand = vec3(-1056.98, -1478.34, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1057.12, -1480.05, -1.42, 285.0), stand = vec3(-1056.98, -1478.34, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1058.07, -1480.21,  -1.42, 105.0), stand = vec3(-1058.94, -1478.7, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1058.23, -1479.39, -1.42, 105.0), stand = vec3(-1058.94, -1478.7, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1059.48, -1479.61,  -1.42, 285.0), stand = vec3(-1058.94, -1478.7, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1059.37, -1480.48, -1.42, 285.0), stand = vec3(-1058.94, -1478.7, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1062.22, -1471.82, -1.42, 70), stand = vec3(-1061.46, -1472.19, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1061.88, -1470.99,  -1.42, 70), stand = vec3(-1061.18, -1471.25, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1063.37, -1470.45, -1.42, 250), stand = vec3(-1064.08, -1470.09, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1063.71, -1471.27, -1.42, 250), stand = vec3(-1064.47, -1471.38, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1068.42, -1466.5, -1.42, 213), stand = vec3(-1068.2, -1465.45, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1067.7, -1466.12,  -1.42, 213), stand = vec3(-1068.6, -1465.69, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1067.69, -1467.89, -1.42, 33), stand = vec3(-1067.24, -1468.51, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1066.94, -1467.55, -1.42, 33), stand = vec3(-1067.24, -1468.51, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1069.14, -1461.3, -1.42, 350), stand = vec3(-1061.46, -1472.19, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1068.39, -1461.5,  -1.42, 350), stand = vec3(-1061.18, -1471.25, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1067.97, -1459.93, -1.42, 170), stand = vec3(-1064.08, -1470.09, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1068.81, -1459.76, -1.42, 170), stand = vec3(-1064.47, -1471.38, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1065.87, -1455.42, -1.42, 309), stand = vec3(-1066.19, -1456.16, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1065.34, -1456.07, -1.42, 309), stand = vec3(-1066.19, -1456.16, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1064.11, -1455.23, -1.42, 129), stand = vec3(-1063.72, -1454.49, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1064.61, -1454.56, -1.42, 129), stand = vec3(-1063.72, -1454.49, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1059.55, -1454.08, -1.42, 263), stand = vec3(-1066.19, -1456.16, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1059.45, -1453.29,  -1.42, 263), stand = vec3(-1066.19, -1456.16, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1058.09, -1454.26, -1.42, 83), stand = vec3(-1066.19, -1456.16, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1057.96, -1453.49,  -1.42, 83), stand = vec3(-1066.19, -1456.16, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1053.27, -1455.94, -1.42, 221.0), stand = vec3(-1053.96, -1455.58, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1053.93, -1456.48, -1.42, 221.0), stand = vec3(-1053.96, -1455.58, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1052.91, -1457.69, -1.42, 41.0), stand = vec3(-1052.13, -1457.91, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1052.27, -1457.14, -1.42, 41.0), stand = vec3(-1052.13, -1457.91, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1050.46, -1462.05, -1.42, 180), stand = vec3(-1050.84, -1461.34, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1051.25, -1462.04, -1.42, 180), stand = vec3(-1050.84, -1461.34, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1051.33, -1463.58, -1.42, 0), stand = vec3(-1050.87, -1464.33, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1050.52, -1463.66, -1.42, 0), stand = vec3(-1050.87, -1464.33, -1.42)}

			chairlist[#chairlist+1] = { coords = vec4(-1059.58, -1466.26, -1.02, 46), stand = vec3(-1059.0, -1465.88, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1059.2, -1465.23, -1.02, 101), stand = vec3(-1059.13, -1464.55, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1059.74, -1464.25,  -1.02, 142), stand = vec3(-1050.87, -1464.33, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1060.82, -1463.94,  -1.02, 187), stand = vec3(-1060.15, -1463.68, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1061.77, -1464.43, -1.02, 231), stand = vec3(-1062.21, -1463.7, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1062.14, -1465.45, -1.02, 180), stand = vec3(-1062.93, -1465.3, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1061.66, -1466.53, -1.02, 328), stand = vec3(-1062.93, -1465.3, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1060.56, -1466.76, -1.02, 0), stand = vec3(-1060.56, -1467.58, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1062.35, -1462.19, -1.02, 46), stand = vec3(-1059.0, -1465.88, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1061.24, -1462.07, -1.02, 101), stand = vec3(-1059.13, -1464.55, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1060.52, -1461.22,  -1.02, 77), stand = vec3(-1050.87, -1464.33, -1.42)}
			chairlist[#chairlist+1] = { coords = vec4(-1061.42, -1459.36,  -1.02, 187), stand = vec3(-1060.15, -1463.68, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1062.59, -1459.49, -1.02, 208), stand = vec3(-1062.21, -1463.7, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1063.29, -1460.36, -1.02, 180), stand = vec3(-1062.93, -1465.3, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1063.25, -1461.45, -1.02, 289), stand = vec3(-1062.93, -1465.3, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1060.61, -1460.11, -1.02, 108), stand = vec3(-1060.03, -1459.65, -1.02)}


			chairlist[#chairlist+1] = { coords = vec4(-1058.59, -1462.52, -1.02, 46), stand = vec3(-1057.35, -1460.17, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1057.78, -1463.29, -1.02, 101), stand = vec3(-1056.06, -1460.56, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1056.65, -1463.23, -1.02, 77), stand = vec3(-1055.53, -1461.84, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1055.89, -1462.42, -1.02, 187), stand = vec3(-1055.53, -1461.84, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1055.93, -1461.3, -1.02, 208), stand = vec3(-1057.2, -1463.66, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1056.78, -1460.59, -1.02, 162), stand = vec3(-1057.2, -1463.66, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1057.9, -1460.6, -1.02, 289), stand = vec3(-1059.02, -1461.99, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1058.69, -1461.41, -1.02, 252), stand = vec3(-1059.02, -1461.99, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1065.51, -1460.55, -1.02, 162), stand = vec3(-1064.98, -1461.66, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1066.27, -1460.32, -1.02, 162), stand = vec3(-1064.98, -1461.66, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1066.64, -1461.85, -1.02, 252), stand = vec3(-1064.98, -1461.66, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1065.9, -1462.05, -1.02, 252), stand = vec3(-1064.98, -1461.66, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1066.13, -1465.34, -1.02, 210), stand = vec3(-1065.05, -1467.36, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1065.43, -1464.92, -1.02, 210), stand = vec3(-1065.05, -1467.36, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1065.47, -1466.6,  -1.02, 30), stand = vec3(-1066.14, -1464.47, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1064.75, -1466.21, -1.02, 30), stand = vec3(-1066.14, -1464.47, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1062.8, -1468.87, -1.02, 249), stand = vec3(-1063.29, -1468.27, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1062.53, -1468.1, -1.02, 249), stand = vec3(-1063.29, -1468.27, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1061.15, -1468.56, -1.02, 69), stand = vec3(-1060.6, -1469.2, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1061.39, -1469.36, -1.02, 69), stand = vec3(-1060.6, -1469.2, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1055.17, -1457.67, -1.02, 228), stand = vec3(-1055.96, -1459.28, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1055.76, -1458.15, -1.02, 228), stand = vec3(-1055.96, -1459.28, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1054.24, -1458.79, -1.02, 48), stand = vec3(-1055.96, -1459.28, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1054.81, -1459.27, -1.02, 48), stand = vec3(-1055.96, -1459.28, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1052.99, -1462.03,  -1.02, 182), stand = vec3(-1054.76, -1462.54, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1053.78, -1461.99, -1.02, 182), stand = vec3(-1054.76, -1462.54, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1053.84, -1463.53, -1.02, 2), stand = vec3(-1054.76, -1462.54, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1053.03, -1463.59, -1.02, 2), stand = vec3(-1054.76, -1462.54, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1058.32, -1456.79,  -1.02, 79), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1058.22, -1456.01, -1.02, 79), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1059.74, -1455.76, -1.02, 259), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1059.84, -1456.58, -1.02, 259), stand = vec3(-1059.6, -1457.45, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1062.6, -1457.26,  -1.02, 124), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1063.08, -1456.6, -1.02, 124), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1063.9, -1458.09, -1.02, 304), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1064.39, -1457.53,-1.02, 304), stand = vec3(-1059.6, -1457.45, -1.02)}

			chairlist[#chairlist+1] = { coords = vec4(-1062.49, -1439.92, -1.02, 90), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1063.18, -1440.6, -1.02, 2), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1064.03, -1440.58, -1.02, 2), stand = vec3(-1059.6, -1457.45, -1.02)}
			chairlist[#chairlist+1] = { coords = vec4(-1064.71, -1439.92, -1.02, 270), stand = vec3(-1059.6, -1457.45, -1.02)}
		end
	end
end

CreateThread(function()
	local i = 0
	for _, v in pairs(chairlist) do i += 1
		Chairs["PearlChair"..i] =
			exports['qb-target']:AddBoxZone("PearlChair"..i, vec3(v.coords.x, v.coords.y , v.coords.z-1), 0.6, 0.6,
			{ name= "PearlChair"..i, heading = v.coords[4], debugPoly = Config.Debug, minZ = v.coords.z-1.2, maxZ = v.coords.z+0.2, },
				{ options = {
					{ event = "jim-pearls:Chair", icon = "fas fa-chair", label = Loc[Config.Lan].target["sit"], loc = v.coords, stand = v.stand }, },
					distance = 2.2 })
	end
	if Config.Debug then print("^5Debug^7: ^2Created ^6"..i.." ^2Chairs^7") end
end)

RegisterNetEvent('jim-pearls:Chair', function(data)
	local canSit = true
	local sitting = false
	local ped = PlayerPedId()
	for _, v in pairs(QBCore.Functions.GetPlayersFromCoords(data.loc.xyz, 0.6)) do
		local dist = #(GetEntityCoords(GetPlayerPed(v)) - data.loc.xyz)
		if dist <= 0.4 then TriggerEvent("QBCore:Notify", Loc[Config.Lan].error["seat_taken"]) canSit = false end
	end
	if canSit then
		if not IsPedHeadingTowardsPosition(ped, data.loc.xyz, 20.0) then TaskTurnPedToFaceCoord(ped, data.loc.xyz, 1500) Wait(1500)	end
		if #(data.loc.xyz - GetEntityCoords(PlayerPedId())) > 1.5 then TaskGoStraightToCoord(ped, data.loc.xyz, 0.5, 1000, 0.0, 0) Wait(1100) end
		TaskStartScenarioAtPosition(PlayerPedId(), "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", data.loc.x, data.loc.y, data.loc.z-0.5, data.loc[4], 0, 1, true)
		pearlseat = data.stand
		sitting = true
	end
	while sitting do
		if sitting then
			if IsControlJustReleased(0, 202) and IsPedUsingScenario(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER") then
				sitting = false
				ClearPedTasks(ped)
				if pearlseat then SetEntityCoords(ped, vec3(pearlseat.x, pearlseat.y, pearlseat.z-0.7)) end
				pearlseat = nil
			end
		end
		Wait(5) if not IsPedUsingScenario(ped, "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER") then sitting = false end
	end
end)

AddEventHandler('onResourceStop', function(r) if r == GetCurrentResourceName() and LocalPlayer.state.isLoggedIn then for k, v in pairs(Chairs) do exports['qb-target']:RemoveZone(k) end end end)