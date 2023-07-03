// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:29 2023
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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.w = t0.Load(r0.w).x;
    r0.y = saturate(r1.w);
    r5.xyzw = r0.yyyy * float4(-227.190887,0.721171975,6.1764698,1.43148303) + float4(29.1176376,-1.79750001,0,0.644843996);
    r0.z = r0.y * r0.y;
    r5.xy = r5.xy * r0.zz + r5.zw;
    r6.xyz = cmp(r0.yyy >= float3(0,0.140000001,1));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xy = r6.xy * r5.xy;
    r5.xy = float2(2,2) * r5.xy;
    r0.w = r5.x + r5.y;
    r0.w = r6.z * 2 + r0.w;
    r0.w = saturate(r6.w * 1 + r0.w);
    r5.xy = r0.ww * float2(1,-0.5) + float2(0,0.5);
    r6.xyzw = r0.yyyy * float4(174.510056,-0.56931901,0,-1.81208503) + float4(-51.4860306,1.76002204,1,0.621383011);
    r6.xy = r6.xy * r0.zz + r6.zw;
    r7.xyz = cmp(r0.yyy >= float3(0,0.184,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r6.zw = r7.xy + r7.yz;
    r6.zw = float2(9.99999997e-007,9.99999997e-007) + r6.zw;
    r6.zw = float2(0.5,0.5) * r6.zw;
    r6.zw = frac(r6.zw);
    r6.xy = r6.zw * r6.xy;
    r6.xy = r6.xy + r6.xy;
    r0.w = saturate(r6.x + r6.y);
    r0.w = r0.w * 2 + 1;
    r5.zw = r0.ww * float2(1,-0.963999987) + float2(0,0.963999987);
    r6.xyzw = r0.yyyy * float4(0,633.103271,15.9691162,1.450863) + float4(0,-99.9708252,-10.4739227,-2.5933609);
    r7.xyzw = r0.yyyy * float4(16.5817337,7.99419689,3.62891603,2.19626808) + float4(0,0.0506860018,0.122795001,0.210247993);
    r8.xyzw = r0.yyyy * float4(0.153933004,-0.294095993,1.50990403,0.496670008) + float4(-0.970156014,0.192871004,0.308346987,0.604618013);
    r6.xyzw = r6.xyzw * r0.zzzz + r7.xyzw;
    r7.xy = r8.xy * r0.zz + r8.zw;
    r8.xyzw = cmp(r0.yyyy >= float4(0,0.00555599993,0.0555559993,0.200000003));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = cmp(r0.yyy >= float3(0.427778006,0.866666973,1));
    r10.xyw = r9.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r6.xyz = r8.xyz * r6.xyz;
    r8.xyz = r10.xyw + r10.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xy = r8.xy * r7.xy;
    r0.w = 2;
    r6.xy = r0.ww * r6.xy;
    r7.xy = float2(2,2) * r7.xy;
    r6.x = r6.x + r6.y;
    r0.w = r0.w * r6.z + r6.x;
    r0.w = r6.w * r8.w + r0.w;
    r6.x = r7.x + r7.y;
    r6.x = r8.z * 2 + r6.x;
    r6.x = r10.w * 1 + r6.x;
    r0.w = saturate(r9.x ? r6.x : r0.w);
    r0.w = r0.w * 0.329999983 + 0.670000017;
    r6.x = saturate(r3.z);
    r6.x = r6.x * 0.099999994 + 0.300000012;
    r0.w = r6.x * r0.w;
    r6.z = 0.800000012 * r0.w;
    r7.xyzw = r0.yyyy * float4(-321.371094,-450.581055,183.029053,35.5365143) + float4(103.390503,32.9228516,-91.800293,-31.184166);
    r8.xyzw = r0.yyyy * float4(3.88888907,9.77134705,17.3861923,9.02558708) + float4(0,-0.114670999,-0.249975994,0.136944994);
    r7.xyzw = r7.xyzw * r0.zzzz + r8.xyzw;
    r8.xyzw = cmp(r0.yyyy >= float4(0,0.0373230018,0.0803880021,0.136372));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r0.w = 2;
    r7.xy = r0.ww * r7.xy;
    r7.x = r7.x + r7.y;
    r0.w = r0.w * r7.z + r7.x;
    r0.w = r7.w * r8.w + r0.w;
    r7.xyzw = r0.yyyy * float4(0,-3.77117896,11.341301,3.80308509) + float4(0,-0.780677974,-20.1337738,-4.57191515);
    r8.xyzw = r0.yyyy * float4(0.0321899988,1.14343798,9.34172058,-1.115273) + float4(0.991681993,0.821726024,-0.328031987,1.97281098);
    r9.xy = r0.yy * float2(-2.28502107,-11.0363312) + float2(8.94569397,4.37565422);
    r7.xyzw = r7.xyzw * r0.zzzz + r8.xyzw;
    r0.z = r9.x * r0.z + r9.y;
    r8.xyzw = cmp(r0.yyyy >= float4(0.252647012,0.258388996,0.406711012,0.583873987));
    r9.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.yz = cmp(r0.yy >= float2(0.79399699,1));
    r8.zw = r8.yz ? float2(1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r7.xyz = r9.xyz * r7.xyz;
    r0.y = r8.z + r8.w;
    r0.y = 9.99999997e-007 + r0.y;
    r0.y = 0.5 * r0.y;
    r0.y = frac(r0.y);
    r8.z = 2;
    r7.xy = r8.zz * r7.xy;
    r0.y = dot(r0.yy, r0.zz);
    r0.z = r7.x + r7.y;
    r0.z = r8.z * r7.z + r0.z;
    r0.z = r7.w * r9.w + r0.z;
    r0.z = r8.x ? r0.z : r0.w;
    r0.y = saturate(r8.y ? r0.y : r0.z);
    r6.w = 0.5 * r0.y;
    r0.y = saturate(r4.w);
    r4.x = r0.y * 2 + -1;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.xy = r3.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r4.yz = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}