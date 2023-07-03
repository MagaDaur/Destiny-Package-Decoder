// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:53 2023
Buffer<float4> t0 : register(t0);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).zwxy;
    r2.xyz = t0.Load(r2.w).zxy;
    r0.y = saturate(0.100000001 * r1.w);
    r6.yz = r0.yy * float2(-0.150000006,-0.150000006) + float2(0.150000006,0.150000006);
    r0.yz = cb13[0].xx * r5.wx;
    r0.y = r0.y * 1.20000005 + 1;
    r7.xyzw = r0.yyyy * float4(4.07999992,1.01999998,0.558659196,0.310237855) + float4(0.920000017,0.330000013,0.25999999,0.540000021);
    r8.xyzw = r0.yyyy * float4(1.83000004,3.08999991,0.389999986,0.870000005) + float4(0.119999997,0.370000005,0.159999996,0.790000021);
    r9.xyzw = round(r7.xyzw);
    r7.xyzw = -r9.xyzw + r7.xyzw;
    r9.xyzw = abs(r7.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
    r7.xyzw = r9.xyzw * r7.xyzw;
    r9.xyzw = round(r8.xyzw);
    r8.xyzw = -r9.xyzw + r8.xyzw;
    r9.xyzw = abs(r8.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
    r8.xyzw = r9.xyzw * r8.xyzw;
    r8.xyzw = float4(0.0199999996,0.0199999996,0.280000001,0.280000001) * r8.xyzw;
    r0.y = dot(r7.xyzw, r8.xyzw);
    r0.y = saturate(0.5 + r0.y);
    r7.xyz = r0.yyy * float3(0.0500000119,0.0500000119,0.099999994) + float3(0.449999988,0.449999988,0.400000006);
    r8.xyzw = r0.zzzz * float4(8.15999985,2.03999996,1.11731839,0.620475709) + float4(0.920000017,0.330000013,0.25999999,0.540000021);
    r9.xyzw = r0.zzzz * float4(3.66000009,6.17999983,0.779999971,1.74000001) + float4(0.119999997,0.370000005,0.159999996,0.790000021);
    r10.xyzw = round(r8.xyzw);
    r8.xyzw = -r10.xyzw + r8.xyzw;
    r10.xyzw = abs(r8.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
    r8.xyzw = r10.xyzw * r8.xyzw;
    r10.xyzw = round(r9.xyzw);
    r9.xyzw = -r10.xyzw + r9.xyzw;
    r10.xyzw = abs(r9.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
    r9.xyzw = r10.xyzw * r9.xyzw;
    r9.xyzw = float4(0.0199999996,0.0199999996,0.280000001,0.280000001) * r9.xyzw;
    r0.y = dot(r8.xyzw, r9.xyzw);
    r0.y = saturate(0.5 + r0.y);
    r0.yzw = r0.yyy * float3(0.100000024,0.300000072,0.100000024) + float3(0.899999976,0.899999976,0.899999976);
    r7.w = saturate(r5.y);
    r0.yzw = r0.yzw + -r7.yyz;
    r7.xyz = r7.www * r0.yzw + r7.xyz;
    r0.y = saturate(r3.w);
    r8.xyz = r0.yyy * float3(-202.856506,1.15393198,270.534576) + float3(50.8468513,-2.42253804,-744.322388);
    r9.xyz = r0.yyy * float3(2.92407703,0.891416013,676.921936) + float3(0,0.910049975,-203.134064);
    r0.z = r0.y * r0.y;
    r8.xyz = r8.xyz * r0.zzz + r9.xyz;
    r9.xyzw = cmp(r0.yyyy >= float4(0,0.191275001,0.838926017,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xyz = r9.xyz * r8.xyz;
    r8.xy = r8.xy + r8.xy;
    r0.w = r8.x + r8.y;
    r0.w = saturate(r8.z * 2 + r0.w);
    r8.x = saturate(r2.y);
    r8.yzw = r8.xxx * float3(3.20023394,0.259813994,2.48000002) + float3(0,0.367671996,-1.48000002);
    r9.xyzw = cmp(r8.xxxx >= float4(0,0.125040993,0.832215011,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xyz = r9.xyz * r8.yzw;
    r8.xy = float2(2,2) * r8.xy;
    r8.x = r8.x + r8.y;
    r8.x = r8.z * 2 + r8.x;
    r8.x = saturate(r9.w * 1 + r8.x);
    r8.x = r8.x * 0.0600000024 + 0.00999999978;
    r6.w = r8.x * r0.w;
    r8.xyzw = r0.yyyy * float4(-4.17111588,-551.615601,-3.7322619,-1369.99902) + float4(7.28377485,1505.71729,1,415.901001);
    r0.zw = r8.xy * r0.zz + r8.zw;
    r8.xyzw = cmp(r0.yyyy >= float4(0,0.380697012,0.913949013,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r8.xz = r8.xz * r0.zw;
    r0.yz = float2(2,0.809278011) * r8.xy;
    r0.y = r0.y + r0.z;
    r0.y = r8.z * 2 + r0.y;
    r0.y = saturate(r8.w * 0.003333 + r0.y);
    r8.x = 0.800000012 * r0.y;
    r0.y = (uint)vThreadID.x << 3;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r3.x = 0;
    r3.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r3.xxxw
    r7.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r6.x = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r6.xyzw
    r0.yzw = (int3)r0.xxx + int3(5,6,7);
    r8.y = r4.w;
    r8.zw = r5.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r8.xyzw
    r5.zw = r2.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r5.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}