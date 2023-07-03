// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.zw = (uint2)vThreadID.xx << int2(2,3);
    r0.xy = (int2)r0.wz + (int2)r0.xy;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r2.xz = t0.Load(r2.z).zy;
    r5.xz = saturate(r2.zx);
    r6.xyzw = r5.zzzx * float4(-1.5,-0.675823987,0.700000048,0.5) + float4(1,0.675823987,0.5,0.5);
    r7.xyz = cmp(r5.zzz >= float3(0,0.393332988,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r0.yz = r7.xy + r7.yz;
    r0.yz = float2(9.99999997e-007,9.99999997e-007) + r0.yz;
    r0.yz = float2(0.5,0.5) * r0.yz;
    r0.yz = frac(r0.yz);
    r0.yz = r0.yz * r6.xy;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = r0.y * 0.720000029 + 0.0799999982;
    r0.z = saturate(r4.x);
    r7.xyz = r0.zzz * float3(-1.51612902,-606.270813,0.465438008) + float3(0.516129017,31.8978577,0.0673879981);
    r6.x = r0.z * r0.z;
    r6.y = r7.x * r6.x + 1;
    r6.y = min(1, r6.y);
    r6.y = r6.y * 0.75 + 0.25;
    r8.z = r6.y * r0.y;
    r0.y = saturate(r3.w * 0.5 + -0.5);
    r0.y = r0.y * 0.850000024 + 0.150000006;
    r8.w = r6.z * r0.y;
    r0.y = r5.x * 2 + -3;
    r6.y = r5.x * r5.x;
    r0.y = r0.y * r6.y + 1;
    r0.y = max(0, r0.y);
    r0.y = r0.y * 0.0450000018 + 0.00499999989;
    r6.y = saturate(cb0[3].y * 0.25 + -1);
    r6.y = r6.y * 0.850000024 + 0.150000006;
    r0.y = r6.y * r0.y;
    r9.xyzw = r0.zzzz * float4(3.46666694,-1.65354002,0,46.6472206) + float4(0.813332975,1.12071395,0,-115.451866);
    r6.yz = r7.yz * r6.xx + r9.xy;
    r7.xyz = cmp(r0.zzz >= float3(0,0.0733330026,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r6.yz = r7.xy * r6.yz;
    r6.yz = r6.yz + r6.yz;
    r6.y = saturate(r6.y + r6.z);
    r6.y = r6.y * 0.999000013 + 0.00100000005;
    r7.x = r6.y * r0.y;
    r10.xyzw = r0.zzzz * float4(27.272728,90.9620743,17.8480759,0.0180890001) + float4(0,-22.1574287,0.992793977,0.131810993);
    r6.yz = r9.zw * r6.xx + r10.xy;
    r9.xyzw = cmp(r0.zzzz >= float4(0,0.0366670005,0.649999976,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r9.xz = r9.xz * r6.yz;
    r6.yz = r9.xy + r9.xy;
    r0.y = r6.y + r6.z;
    r0.y = saturate(r9.z * 2 + r0.y);
    r7.y = 3 * r0.y;
    r6.yz = r0.zz * float2(-4.82432508,-0.357360989) + float2(1,0.207460999);
    r6.xy = r10.zw * r6.xx + r6.yz;
    r9.xyz = cmp(r0.zzz >= float3(0,0.273333013,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r0.yz = r9.xy + r9.yz;
    r0.yz = float2(9.99999997e-007,9.99999997e-007) + r0.yz;
    r0.yz = float2(0.5,0.5) * r0.yz;
    r0.yz = frac(r0.yz);
    r0.yz = r0.yz * r6.xy;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.yz = float2(-0,-0.5) + r0.yy;
    r0.yz = saturate(r0.yz + r0.yz);
    r0.yz = float2(200,50) * r0.yz;
    r0.y = dot(float2(1,1), r0.yz);
    r0.y = 50 + r0.y;
    r9.xyzw = r4.xxxx * float4(40.7999992,10.1999998,5.58659172,3.10237861) + float4(0.920000017,0.330000013,0.25999999,0.540000021);
    r10.xyzw = r4.xxxx * float4(18.3000011,30.8999996,3.89999986,8.69999981) + float4(0.119999997,0.370000005,0.159999996,0.790000021);
    r11.xyzw = round(r9.xyzw);
    r9.xyzw = -r11.xyzw + r9.xyzw;
    r11.xyzw = abs(r9.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
    r9.xyzw = r11.xyzw * r9.xyzw;
    r11.xyzw = round(r10.xyzw);
    r10.xyzw = -r11.xyzw + r10.xyzw;
    r11.xyzw = abs(r10.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
    r10.xyzw = r11.xyzw * r10.xyzw;
    r10.xyzw = float4(0.0199999996,0.0199999996,0.280000001,0.280000001) * r10.xyzw;
    r0.z = dot(r9.xyzw, r10.xyzw);
    r0.z = saturate(0.5 + r0.z);
    r0.y = -r0.z * 49 + r0.y;
    r0.z = saturate(3 * r1.w);
    r6.xy = r0.zz * float2(-0.351350993,-2.35135102) + float2(1.702703,1);
    r0.z = r0.z * r0.z;
    r0.z = saturate(r6.x * r0.z + r6.y);
    r0.z = r0.z * r6.w + 1;
    r7.z = r0.y * r0.z;
    r6.xyz = r5.zzz * float3(-0.243934989,-0.754859984,-0.144821003) + float3(0.258881986,0.854505002,0.242676005);
    r5.w = 0.349999994;
    r5.y = cb0[4].x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.wwxy
    r9.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.yyyy, r3.xyzw
    r6.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.zzzz, r6.xyzw
    r5.zw = r4.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.wwww, r5.xyzw
    r0.yzw = (int3)r0.xxx + int3(5,6,7);
    r8.x = r4.w;
    r8.y = r5.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r8.xyzw
    r7.w = r2.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r7.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}